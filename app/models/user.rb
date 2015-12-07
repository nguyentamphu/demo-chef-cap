class User < ActiveRecord::Base

  scope :all_users, -> (status) { where(is_deleted: status) }

  enum is_deleted: { available: false, locked: true }

end
