class Client < ApplicationRecord
  STATUSES = [:green, :yellow, :red]

  enum status: STATUSES
end
