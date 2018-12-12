class Ticket < ActiveRecord::Base
  validates :user_first_name, :user_last_name, presence: true
  belongs_to :user
  belongs_to :train
end
