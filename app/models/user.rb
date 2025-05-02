class User <ApplicationRecord
  has_many :messages, through: :chats
  validates :email, presence: true, uniqueness: {message: "This email already is in use"}
end