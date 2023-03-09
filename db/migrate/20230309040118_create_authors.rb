class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.belongs_to :book, null: false, index: true, foreign_key: { on_delete: :cascade }

      t.timestamps
    end

    add_index :authors, :name
  end
end
