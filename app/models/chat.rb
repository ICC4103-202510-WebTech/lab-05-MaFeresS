class Chat <ApplicationRecord
  scope :allowed, ->(user_id) {where(sender_id: user_id).or(where(receiver_id: user_id))}
  has_many :messages
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  validates :sender_id, presence: true
  validates :receiver_id, presence: true
  validates :receiver_id, comparison: {other_than: :sender_id}
end