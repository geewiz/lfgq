FactoryBot.define do
  factory :event do
    title { "Test event" }
    date { "2019-01-29" }
    time { "16:00:00" }
    description { "Event description" }
    rw_url { "owner-url" }
    ro_url { "participant-url" }
  end

  factory :event_role do
    event
    name { "Role name" }
    amount { 1 }
  end
end
