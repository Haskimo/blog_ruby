class TableArticles < ActiveRecord::Migration
  def change
    create_table :articles
    add_column :articles, :title, :string
    add_column :articles, :author, :string
    add_column :articles, :content, :string
  end
end
