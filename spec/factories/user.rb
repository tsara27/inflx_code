FactoryBot.define do
  factory :user do
    association :client
    first_name { 'Alicia' }
    last_name { 'Khadija' }
    sequence(:email) { |n| "user#{n}@sample.com" }
    password { 'password' }

    trait :confirmed do
      after(:create, &:confirm)
    end
  end
end
