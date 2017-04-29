class User < ApplicationRecord
  validates :name, presence: true, length: { maximun: 50}
  validates :email, presence: true, length: { maximun: 255}
end
