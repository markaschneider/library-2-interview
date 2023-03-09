class Book < ApplicationRecord
  has_many :book_copies
  has_many :leases, through: :book_copies
end
