class User < ApplicationRecord
  has_one :to_do_list
end
