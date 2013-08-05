class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :pass
      t.integer :age
      t.text :profile
      t.string :hobby

      t.timestamps
    end
  end
end
