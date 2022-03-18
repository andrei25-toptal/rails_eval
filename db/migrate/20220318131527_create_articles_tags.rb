class CreateArticlesTags < ActiveRecord::Migration[7.0]
  def change
    create_table :articles_tags do |t|
      t.belongs_to :article
      t.belongs_to :tag
      t.timestamps
    end
  end
end
