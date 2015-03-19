RSpec.describe TaxJarApi do
  describe "locations" do
    it "returns success" do
      TaxJarApi.tax_rate("93311")
    end
  end
end