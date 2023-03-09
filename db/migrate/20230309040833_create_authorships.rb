class CreateAuthorships < ActiveRecord::Migration[7.0]
  def change
    create_table :authorships do |t|
      t.belongs_to :author, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.belongs_to :book, null: false, index: true, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
