class Car < ActiveRecord::Base
  belongs_to :owner
  validates :make, :presence => true
  validates :model, :presence => true
  validates :registration_number, :presence => true
  validates :hourly_rate, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => {:greater_than => 0 }
  
end
