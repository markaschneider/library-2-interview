class CreateBookCopies < ActiveRecord::Migration[7.0]
  def change
    create_table :book_copies do |t|
      t.belongs_to :book, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.string :serial_number

      t.timestamps
    end

    add_index :book_copies, :serial_number, unique: true
  end
end
