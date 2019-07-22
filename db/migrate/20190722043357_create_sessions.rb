class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :name
      t.text :body
      t.boolean :optional, null: false, default: false
      t.references :week, null: false, foreign_key: true

      t.timestamps
    end
  end
end
