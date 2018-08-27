class Client < ApplicationRecord
  STATUSES = %i[green yellow red].freeze

  enum status: STATUSES

  has_many :users, inverse_of: :client

  validates_presence_of :name
  validates_length_of :name, maximum: 180
end
