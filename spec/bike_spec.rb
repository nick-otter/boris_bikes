require 'bike'

describe Bike do
  describe "bike working?" do
    it { is_expected.to respond_to(:working?) }
  end
end
