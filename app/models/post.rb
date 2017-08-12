class Post < ApplicationRecord
  #여러개의 댓글을 가지고 있다.
  has_many :comments, dependent: :destroy
end
