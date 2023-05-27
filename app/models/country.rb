class Country < ApplicationRecord
    has_many :tours, -> { order(:sort) }, dependent: :delete_all
    belongs_to :region, optional: true
    scope :active, -> { where( active: true ) }
end
