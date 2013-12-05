class AddDescriptionToPost < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.string :description
    end
  end
end