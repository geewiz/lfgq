# frozen_string_literal: true

require "spec_helper"

feature "Organiser creates event" do
  scenario "with valid data" do
    visit new_event_path
    event_time = Time.now

    fill_form(
      :event,
      title: "Dungeon run",
      description: "Tonight's group",
      date: event_time.to_date,
      time: event_time.in_time_zone,
    )
    click_button "Create Event"

    expect(page).to have_content("Dungeon run")
    event = Event.last
    expect(event.title).to eq "Dungeon run"
    expect(event.description).to eq "Tonight's group"
    expect(event.date).to eq event_time.to_date
    expect(event.time).to eq event_time.to_time
  end
end
