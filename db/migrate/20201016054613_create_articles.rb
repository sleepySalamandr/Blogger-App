class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :title
      t.string :topic
      t.text :body
      t.text :image
      t.timestamps
    end
  end
end
