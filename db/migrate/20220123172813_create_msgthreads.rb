class CreateMsgthreads < ActiveRecord::Migration[7.0]
  def change
    create_table :msgthreads do |t|
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
