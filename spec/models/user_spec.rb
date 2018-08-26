require 'rails_helper'

describe User, type: :model do
  # ================
  # = Associations =
  # ================
  it { should belong_to(:client) }
end
