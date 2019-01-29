FactoryBot.define do
  factory :event_role do
    event_id { nil }
    name { "MyString" }
    amount { 1 }
  end
  factory :event do
    title { "MyString" }
    time { "2019-01-29 16:04:41" }
    description { "MyString" }
    rw_url { "MyString" }
    ro_url { "MyString" }
  end
end
