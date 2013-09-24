# require 'dragonfly/rails/images'

require 'dragonfly'

app = Dragonfly[:images]
app.configure_with(:imagemagick)
app.configure_with(:rails)

if Rails.env.production?
  app.datastore.configure do |c|
    # Prohibit images from being accessed directly from S3 by the public.
    # In conjunction with protect_from_dos_attacks (see below), this allows
    # our rails app to enforce access, e.g. to allow access to a 64x64 thumbnail
    # but prohibit access to the original image.
    # c.storage_headers = {'x-amz-acl' => 'private'}
    c.bucket_name = 'musicgig'
    c.access_key_id = ENV['S3_KEY']
    c.secret_access_key = ENV['S3_SECRET']
  end
end

app.define_macro(ActiveRecord::Base, :image_accessor)
