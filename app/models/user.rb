class User < ActiveRecord::Base
  has_many :gigs, dependent: :delete_all
  has_secure_password

  validates :email, uniqueness: true

  def email=(value)
    value = value.strip.downcase
    write_attribute :email, value
  end
end
