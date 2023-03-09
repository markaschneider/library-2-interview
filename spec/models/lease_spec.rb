require 'rails_helper'

RSpec.describe Lease, type: :model do
  describe "associations" do
    it { should belong_to(:book_copy) }
    it { should belong_to(:user) }
  end
end
