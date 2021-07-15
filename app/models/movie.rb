class Movie < ApplicationRecord
  with_options presence: true do
    validates :genru
    validates :title
    validates :url
  end
end
