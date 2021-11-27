class Prospecto < ApplicationRecord
  belongs_to :user
  has_many :conversations, dependent: :destroy
  enum status: %i[prospecto interesado cliente]

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :status, presence: true

  default_scope -> { order(created_at: :desc) }
  scope :prospecto_stats, -> { where(status: "prospecto").count }
  scope :interesado_stats, -> { where(status: "interesado").count }
  scope :cliente_stats, -> { where(status: "cliente").count }

  def full_name
    [first_name, last_name].join(" ")
  end
end
