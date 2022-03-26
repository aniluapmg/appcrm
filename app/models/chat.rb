class Chat < ApplicationRecord
    belongs_to :prospect
    default_scope -> { order(created_at: :desc) }
    validates :prospect_id, presence:true
    validates :content, length: { maximum: 200 },
    presence: true
    

end
