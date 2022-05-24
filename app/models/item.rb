class Item < ApplicationRecord
  belongs_to :to_do_list

  enum status: { new_item: 0, read: 1, executed: 2, archived: 3 }
end
