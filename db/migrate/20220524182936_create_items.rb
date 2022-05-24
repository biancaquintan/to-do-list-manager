class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :to_do_list, null: false, foreign_key: true
      t.string :title, limit: 100, null: false
      t.string :description
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end
