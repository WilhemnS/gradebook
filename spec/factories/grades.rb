FactoryBot.define do
  factory :grade do
    sequence(:student_id, (0..9).cycle){ |n| 
      letters = ('A'..'Z').to_a
      l = letters[n % letters.length]
      "#{n}#{n}#{n}#{l}#{l}#{l}"
    }
    sequence(:student_name) { |n| "Student #{n}" }

    trait :valid do
      student_grade { rand(0..100) }
    end

    trait :invalid do
      student_grade { -70 }
      student_id { "12345" }
    end
  end
end