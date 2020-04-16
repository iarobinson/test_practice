class Test < ApplicationRecord
  has_rich_text :description
  has_many :sections
end
