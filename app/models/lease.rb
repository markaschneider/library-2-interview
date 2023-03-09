class Lease < ApplicationRecord
  TERM = 14.days
  FEE_RATE = 1.00

  belongs_to :book_copy
  belongs_to :user

  def self.active
    where(end_on: nil)
  end
end
