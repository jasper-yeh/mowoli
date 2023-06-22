FactoryGirl.define do
  factory :order do
    patient_id { Faker::Number.number(6) }
    patients_sex { Order::PATIENTS_SEX_CODES.sample }
    patients_name { [ Faker::Name.last_name, Faker::Name.first_name ].join('^') }
    referring_physicians_name { [ Faker::Name.last_name, Faker::Name.first_name, nil, nil, Faker::Name.prefix ].join('^') }
    requested_procedure_description { %w(head knee).sample }
    patients_birth_date { Faker::Date.between(90.years.ago, Date.today) }
    scheduled_date {Faker::Date.between(12.years.ago, 2.years.from.today)}
    station
  end
end
