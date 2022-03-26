class Prospect < ApplicationRecord
    has_many :chats, dependent: :destroy
    validates :name, :last_name, :phone, :email, :status, presence: true   
end
