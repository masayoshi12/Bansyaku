class CreateBansyakuposts < ActiveRecord::Migration[6.0]
  def change
    create_table :bansyakuposts do |t|
      t.string  :sake_name,         null: false
      t.integer :sake_id,           null: false
      t.integer :warimono_id
      t.string  :onetumami_name,   null: false
      t.integer :onetumami_id,     null: false
      t.text    :onetumami_recipe
      t.string  :twotumami_name
      t.integer :twotumami_id
      t.text    :twotumami_recipe
      t.text    :user_comment
      t.references :user,           foreign_key: true
      t.timestamps
    end
  end
end
