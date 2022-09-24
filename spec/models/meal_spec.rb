require 'rails_helper'

describe Meal, type: :model do
  context 'when create a meal' do
    subject(:meal) { build_stubbed(:meal) }

    # == Attributes ===============================================================================

    # == Relationships ============================================================================

    it { should have_many(:checks) }

    # it { should have_many(:tables) }

    # == Validations ==============================================================================

    it { is_expected.to be_valid }
    it { is_expected.to validate_presence_of(:name) }
  end
end
