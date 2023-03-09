FactoryBot.define do
  factory :book do
    sequence(:title) { |n| "Awesome Book #{n}" }
    sequence(:isbn) { |n| "ISBN #{n}" }
  end
end
