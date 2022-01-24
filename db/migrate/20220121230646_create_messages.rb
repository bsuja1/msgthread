class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :messagetext
      t.boolean :isDeleted
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :msgthread, null: false, foreign_key: true
      t.timestamps
    end
  end
end
