class Client < ApplicationRecord
  STATUSES = %i[green yellow red].freeze

  enum status: STATUSES

  has_many :users, inverse_of: :client

  validates_presence_of :name
end
