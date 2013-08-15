class AddProfileIdToWeblog < ActiveRecord::Migration
  def change
    add_column :weblogs, :profile_id, :integer
  end
end
