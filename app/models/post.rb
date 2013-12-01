class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :post_status
  has_and_belongs_to_many :tag
end
