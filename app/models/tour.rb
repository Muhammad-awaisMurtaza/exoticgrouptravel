class Tour < ApplicationRecord
    has_many_attached :images
    has_one_attached :cover_image
    belongs_to :country
    belongs_to :trip_idea
    scope :featured, -> { where( featured: true ) }
    self.per_page = 2

    before_create :set_sort

    private

    def set_sort
        self.sort = Tour.all.maximum(:sort) + 1
    end
end
