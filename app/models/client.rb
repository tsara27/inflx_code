class Client < ApplicationRecord
  STATUSES = [:green, :yellow, :red]

  enum status: STATUSES

  has_many :users
end
