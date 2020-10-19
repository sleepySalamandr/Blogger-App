class AddBlogTitleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :blog_title, :text
  end
end
