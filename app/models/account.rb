require 'digest/sha1'

class Account < ActiveRecord::Base

  validates :key, presence: true
  validates :secret, presence: true

  validates :key, uniqueness: true
  validates :secret, uniqueness: true

  validates_length_of :key, :minimum => 8, :maximum => 8
  validates_length_of :secret, :minimum => 16, :maximum => 16


  before_validation do
    self.key = Digest::SHA1.hexdigest("key-#{Time.now}")[0,8] if self.key.nil?
    self.secret = Digest::SHA1.hexdigest("secret-#{Time.now}")[0,16] if self.secret.nil?
  end

end
