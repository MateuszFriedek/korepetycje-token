class TutorsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_tutor, only: %i[ show edit update destroy ]

  # GET /tutors or /tutors.json
  def index
    @tutors = Tutor.all
  end

  # POST /tutors/search.json
  def search

    if params[:search][:location].blank?
      @tutors = Tutor.where("subject = ? AND is_remote = true", params[:search][:subject])
    else
      @tutors = Tutor.where("subject = ? AND location = ?", params[:search][:subject], params[:search][:location]) #"subject = ? AND location = ?", params[:search][:subject], params[:search][:location]
    end
  end

  # GET /tutors/1 or /tutors/1.json
  def show
  end

  # GET /tutors/new
  def new
    @tutor = Tutor.new
  end

  # GET /tutors/1/edit
  def edit
  end

  # POST /tutors or /tutors.json
  def create

    respond_to do |format|
      format.html do
        @tutor = Tutor.new(tutor_params)
        if @tutor.save
          redirect_to tutor_url(@tutor), notice: "Tutor was successfully created."
        else
          render :new, status: :unprocessable_entity
        end
      end
      format.json do
        require_token
        @tutor = Tutor.new(tutor_params)
        if current_user
          if current_user.id == params[:tutor][:user_id].to_i
            if @tutor.save
              render :show, status: :created, location: @tutor
            else
              render json: @tutor.errors, status: :unprocessable_entity
            end
          else
            render_unauthorized("Access denied")
          end
        end
      end
    end
  end

  # PATCH/PUT /tutors/1 or /tutors/1.json
  def update

    respond_to do |format|
      format.html do
        if @tutor.update(tutor_params)
          format.html { redirect_to tutor_url(@tutor), notice: "Tutor was successfully updated." }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
      format.json do
        require_token
        if current_user
          if current_user.tutor.id == params[:id].to_i
            if @tutor.update(tutor_params)
              render :show, status: :ok, location: @tutor
            else
              render json: @tutor.errors, status: :unprocessable_entity
            end
          else
            render_unauthorized("Access denied")
          end
        end
      end
    end
  end

  # DELETE /tutors/1 or /tutors/1.json
  def destroy

    respond_to do |format|
      format.html do
        @tutor.destroy
        format.html { redirect_to tutors_url, notice: "Tutor was successfully destroyed." }
      end
      format.json do
        require_token
        if current_user
          if current_user.tutor.id == params[:id].to_i
            @tutor.destroy
              render ok
          else
            render_unauthorized("Access denied")
          end
        end
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutor
      @tutor = Tutor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tutor_params
      params.require(:tutor).permit(:name, :degree, :description, :email, :location, :is_remote, :phone_number, :start_date, :subject, :user_id)
    end
end
