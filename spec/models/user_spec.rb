require 'rails_helper'
require 'database_cleaner'

describe User do
  context 'when create a user' do
    subject(:user) { build_stubbed(:user) }

    # == Attributes ===============================================================================

    # == Relationships ============================================================================

    # == Validations ==============================================================================

    it { is_expected.to be_valid }
  end
end



