class Section < ApplicationRecord
  belongs_to :test
  has_many :questions
  # has_rich_text :description
end
