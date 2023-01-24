class Klass < ApplicationRecord
  belongs_to :student, optional: true
  belongs_to :tutor
end
