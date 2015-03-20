require "rails_helper"

RSpec.describe TaxJarApi do
  describe "locations", :external_api do
    it "returns error if invalid zipcode" do
      location, error = TaxJarApi.tax_rate("abc", "test", "error")
      expect(location).to be_nil
      expect(error).to_not be_nil
    end

    it "returns success" do
      location, error = TaxJarApi.tax_rate("93311")
      expect(error).to be_nil
      expect(location["zip"]).to eq("93311")
    end
  end
end