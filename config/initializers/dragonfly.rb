require 'dragonfly/rails/images'

# This is the config for S3

# require 'dragonfly'

# app = Dragonfly[:images]
# app.configure_with(:imagemagick)
# app.configure_with(:rails)

# if Rails.env.production?
#   app.configure do |c|
#     c.datastore = Dragonfly::DataStorage::S3DataStore.new(
#       :bucket_name => 'musicgig',
#       :access_key_id => ENV['S3_KEY'],
#       :secret_access_key => ENV['S3_SECRET']
#     )
#   end
# end

# app.define_macro(ActiveRecord::Base, :image_accessor)