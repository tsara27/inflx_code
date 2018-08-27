require 'rails_helper'

describe User, type: :model do
  # ================
  # = Associations =
  # ================
  it { should belong_to(:client) }

  # ===============
  # = Validations =
  # ===============
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }

  it 'does not save when name is more than 180' do
    user = build(:user)
    user.first_name = 'A model spec is a thin wrapper for an ' \
                      'ActiveSupport::TestCase, and includes all ' \
                      'of the behavior and assertions that it provides, ' \
                      "in addition to RSpec's own behavior and expectations."
    user.last_name = 'Jr.'
    expect(user.validate).to eq(false)
  end
end
