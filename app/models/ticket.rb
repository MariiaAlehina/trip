class Ticket < ActiveRecord::Base
  belongs_to :current_train, class_name: 'Train', foreign_key: :current_train_id
  belongs_to :current_user, class_name: 'User', foreign_key: :current_user_id
end
