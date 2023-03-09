require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:leases) }
    it { should have_many(:book_copies).through(:leases) }
    it { should have_many(:books).through(:book_copies) }
  end
end
