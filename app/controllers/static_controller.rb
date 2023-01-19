class StaticController < ApplicationController
  def index
    @students = Student.all
    @tutors = Tutor.all
  end
end
