class BookCopy < ApplicationRecord
  belongs_to :book
  has_many :leases
end
