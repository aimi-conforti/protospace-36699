class User < ApplicationRecord
  validates :a, presence: true
  validates :b, presence: true
  validates :c, presence: true
end
