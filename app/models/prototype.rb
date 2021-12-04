class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true, unless: ;was_attached?
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

  def was_attached?
    self.image.was_attached?
  end
end
