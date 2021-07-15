class Text < ApplicationRecord
  with_options presence: true do
    validates :genru
    validates :title
    validates :content
  end
end
