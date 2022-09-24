require 'rails_helper'

describe Check, type: :model do
  context 'when create a check' do
    subject(:check) { build_stubbed(:check) }

    # == Attributes ===============================================================================

    # == Relationships ============================================================================

    it { should belong_to(:table) }
    it { should belong_to(:meal) }

    # == Validations ==============================================================================

    it { is_expected.to be_valid }
  end
end
