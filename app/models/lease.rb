class Lease < ApplicationRecord
  belongs_to :book_copy
  belongs_to :user
end
