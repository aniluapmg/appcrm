class Chat < ApplicationRecord
    belongs_to :prospect
    validates :content, length: { maximum: 200 }
end
