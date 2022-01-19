class Toile < ApplicationRecord
  belongs_to :user
  attachment :image

  with_options presence: true do
    validates :title
    validates :body
    validates :body2
    validates :body3
    validates :image
  end
end
