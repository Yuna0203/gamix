class TargetAge < ApplicationRecord
  
  has_many :games, dependent: :destroy
  
end
