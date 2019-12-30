class TableArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles
    add_column :articles, :title , :string 
  end
end
