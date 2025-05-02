class User <ApplicationRecord
  has_many :messages, through: :chats
  validates :email, presence: true, uniqueness: true
end