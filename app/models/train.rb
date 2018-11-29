class Train < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :railway_station
end
