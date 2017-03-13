class Comment < ApplicationRecord
  belongs_to :entry

  validates :body, presence: true, length: { minimum: 5 }
end
