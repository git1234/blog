class AddBlogUserIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :blog_user_id, :integer
  end
end
