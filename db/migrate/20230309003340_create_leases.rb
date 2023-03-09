class CreateLeases < ActiveRecord::Migration[7.0]
  def change
    create_table :leases do |t|
      t.belongs_to :book_copy, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.belongs_to :user, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.date :start_on, null: false
      t.date :end_on
      t.date :expires_on, null: false

      t.timestamps
    end
  end
end
