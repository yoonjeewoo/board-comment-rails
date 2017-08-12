class Comment < ApplicationRecord
  #포스트에 속해있다.
  belongs_to :post
end
