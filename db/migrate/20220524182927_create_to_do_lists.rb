class CreateToDoLists < ActiveRecord::Migration[6.1]
  def change
    create_table :to_do_lists do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
