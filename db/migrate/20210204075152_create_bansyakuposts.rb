class CreateBansyakuposts < ActiveRecord::Migration[6.0]
  def change
    create_table :bansyakuposts do |t|
      t.string  :sake_name,         null: false
      t.integer :sake_id,           null: false
      t.integer :warimono_id
      t.string  :one_tumami_name,   null: false
      t.integer :one_tumami_id,     null: false
      t.text    :one_tumami_recipe
      t.string  :two_tumami_name
      t.integer :two_tumami_id
      t.text    :two_tumami_recipe
      t.text    :user_comment
      t.references :user,           foreign_key: true
      t.timestamps
    end
  end
end
