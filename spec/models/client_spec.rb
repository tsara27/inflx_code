require 'rails_helper'

describe Client, type: :model do
  # ================
  # = Associations =
  # ================
  it { should have_many(:users) }

  # =========
  # = Enums =
  # =========
  it { should define_enum_for(:status).with(%i[green yellow red]) }

  # ===============
  # = Validations =
  # ===============
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_most(180) }
end
