class PostsTags < ActiveRecord::Migration
  def change
    create_table :posts_tags, :force => true , :id=> false do |t|
      t.references :post
      t.references :tag
      t.timestamps
    end
  end
end