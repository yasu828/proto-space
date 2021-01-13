class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text,              null: false
      t.text :user_id,           foreign_key: true
      t.text :prototype_id,      foreign_key: true
      t.timestamps
    end
  end
end