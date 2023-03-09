class User < ApplicationRecord
  has_many :leases
  has_many :book_copies, through: :leases
  has_many :books, through: :book_copies
end
