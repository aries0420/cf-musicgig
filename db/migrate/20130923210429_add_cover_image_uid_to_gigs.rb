class AddCoverImageUidToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :cover_image_uid, :string
  end
end
