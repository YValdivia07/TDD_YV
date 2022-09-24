require 'rails_helper'

describe Table, type: :model do
  context 'when create a table' do
    subject(:table) { build_stubbed(:table) }

    # == Attributes ===============================================================================

    # == Relationships ============================================================================

    it { is_expected.to have_many(:checks) }
    it { is_expected.to have_many(:meals) }
    # == Validations ==============================================================================

    it { is_expected.to be_valid }
    it { is_expected.to validate_presence_of(:number) }
  end
end
