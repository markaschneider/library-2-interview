require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "associations" do
    it { should have_many(:authorships) }
    it { should have_many(:books).through(:authorships) }
  end
end
