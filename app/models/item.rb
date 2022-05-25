class Item < ApplicationRecord
  belongs_to :to_do_list

  validates :title, uniqueness: { case_sensitive: false, message: "Ooops! Already exists an item with this title" }

  enum status: { new_item: 0, read: 1, executed: 2, archived: 3 }
end
