class AddLikesAndDislikesToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :likes, :int
    add_column :articles, :dislikes, :int
  end
end
