class User < ApplicationRecord
  has_one :to_do_list

  validates :username, uniqueness: true
end
