class CreatePostStatuses < ActiveRecord::Migration
  def change
    create_table :post_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
