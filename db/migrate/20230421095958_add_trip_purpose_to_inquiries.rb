class AddTripPurposeToInquiries < ActiveRecord::Migration[6.1]
  def change
    add_column :inquiries, :trip_purpose, :integer
  end
end
