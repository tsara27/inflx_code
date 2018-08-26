FactoryBot.define do
  factory :client do
    sequence(:name) { |n| "Client##{n}" }

    trait :green do
      status { :green }
    end

    trait :yellow do
      status { :yellow }
    end

    trait :red do
      status { :red }
    end
  end
end
