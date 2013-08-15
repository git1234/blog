class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.string :hobby
      t.text :detail

      t.timestamps
    end
  end
end
