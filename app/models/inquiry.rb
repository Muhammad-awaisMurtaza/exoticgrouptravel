class Inquiry < ApplicationRecord
    TRIP_PURPOSE = {
        "Active Adventurous": 0,
        "Beach & Island": 1,
        "Cruises & sailing": 2,
        "Escorted Coach Touring": 3,
        "Family Vacation": 4,
        "Luxury and Beyond": 5,
        "Multi Country Vacation Ideas": 6,
        "Private Experience": 7,
        "Romance and Honeymoon": 8,
        "Small Group Touring": 9,
        "Tailor made travel Ideas": 10
    }

    belongs_to :tour, optional: true
    belongs_to :trip_idea, optional: true

    enum title: { Mr: 0, Mrs: 1, Ms: 2, Other:3 }
    enum user_type: { Customer:0, Agent: 1 }
    enum contact_method:  { Email:0, Phone: 1 }
    enum trip_purpose: TRIP_PURPOSE
end
