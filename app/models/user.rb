class User < ApplicationRecord
  has_one :tutor
  has_one :student

  has_secure_password
end
