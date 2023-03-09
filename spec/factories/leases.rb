FactoryBot.define do
  factory :lease do
    book_copy
    user
    start_on { Date.today }
    end_on { nil }
    expires_on { 2.weeks.from_now }
  end
end
