require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "associations" do
    it { should have_many(:book_copies) }
    it { should have_many(:leases).through(:book_copies) }
  end
end
