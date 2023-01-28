class User < ApplicationRecord
  has_one :tutor
  has_one :student

  has_secure_password
  has_secure_token

  def invalidate_token
    self.update_columns(token: nil)
  end

end
