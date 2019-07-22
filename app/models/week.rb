class Week < ApplicationRecord
  belongs_to :plan
  has_many :sessions
end
