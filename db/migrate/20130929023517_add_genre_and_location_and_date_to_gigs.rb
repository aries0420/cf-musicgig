class AddGenreAndLocationAndDateToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :genre, :string
    add_column :gigs, :location, :string
    add_column :gigs, :date, :datetime
  end
end
