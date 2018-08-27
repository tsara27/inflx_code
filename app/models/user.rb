class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :client, required: false

  accepts_nested_attributes_for :client

  validates_presence_of :first_name, :last_name
  validate :name_length

  def name
    "#{first_name} #{last_name}"
  end

  private

  def name_length
    if name.length > 180
      errors.add(:name, ' should not be longer than 180 characters.')
    end
  end
end
