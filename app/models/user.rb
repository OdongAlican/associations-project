class User < ApplicationRecord
    has_many :created_events, foreign_key: "creator_id", class_name: "Event"
    has_many :event_attendings, foreign_key: :attendee_id, dependent: :destroy
    has_many :attended_events, through: :event_attendings, source: :attended_event
    has_secure_password
end
