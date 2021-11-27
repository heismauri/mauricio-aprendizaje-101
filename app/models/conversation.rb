class Conversation < ApplicationRecord
  belongs_to :prospecto

  validates :message, presence: true, length: { minimum: 1 }

  default_scope -> { order(created_at: :desc) }
end
