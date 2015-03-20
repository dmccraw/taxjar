require "rails_helper"

RSpec.describe TaxJarApi do
  describe "locations" do
    it "returns success" do
      TaxJarApi.tax_rate("93311", "test", "error")
    end
  end
end