FactoryBot.define do
  factory :book_copy do
    book
    sequence(:serial_number) { |n| "ABC#{n}" }
  end
end
