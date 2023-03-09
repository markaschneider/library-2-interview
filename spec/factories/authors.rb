FactoryBot.define do
  factory :author do
    sequence(:name) { |i| "Famous Author#{i}" }
    book
  end
end
