class Api::Charge < ActiveRecord::Base
  validates :amount, presence: true
  validates_numericality_of :amount, only_integer: true
  validates :currency, presence: true
  validates_length_of :currency, :is => 3
  validates :source, presence: true
end
