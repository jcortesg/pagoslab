require 'digest/sha1'

class Account < ActiveRecord::Base

  validates :name, presence: true
  validates :phone, presence: true
  validates :website, presence: true
  validates :key, presence: true
  validates :secret, presence: true

  validates :key, uniqueness: true
  validates :secret, uniqueness: true

  validates_format_of :phone, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
  validates_format_of :website, :with =>  /https?:\/\/[\S]+/ , :message => "Must be a valid url"
  validates_length_of :key, :minimum => 8, :maximum => 8
  validates_length_of :secret, :minimum => 16, :maximum => 16

  before_validation do
    self.key = Digest::SHA1.hexdigest("key-#{Time.now}")[0,8] if self.key.nil?
    self.secret = Digest::SHA1.hexdigest("secret-#{Time.now}")[0,16] if self.secret.nil?
  end

end
