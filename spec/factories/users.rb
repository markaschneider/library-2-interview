FactoryBot.define do
  factory :user do
    email { "foo@example.com" }
    first_name { "John" }
    last_name { "Doe" }
  end
end
