class CreateWeblogs < ActiveRecord::Migration
  def change
    create_table :weblogs do |t|
      t.integer :user_id
      t.string :blog_name

      t.timestamps
    end
  end
end
