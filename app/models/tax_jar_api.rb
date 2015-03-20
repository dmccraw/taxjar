class TaxJarApi
  # "location" => {
  #                      "state" => "CA",
  #                        "zip" => "93311",
  #                 "state_rate" => "0.065",
  #                       "city" => "BAKERSFIELD",
  #                  "city_rate" => "0.0",
  #                     "county" => "KERN",
  #                "county_rate" => "0.01",
  #     "combined_district_rate" => "0.0",
  #              "combined_rate" => "0.075"

  def self.tax_rate(zip, city = nil, country = nil)
    RestClient.get(base_url(zip, city, country), authorization) { |response, request, result, &block|
      case response.code
      when 200
        location = JSON.parse(response.body, symbolize_keys: true)
        # ap location
        return location["location"], nil
      when 400
        # Not authorized. Access token is missing or invalid.
        return nil, "Not authorized. Access token is missing or invalid."
      when 401
        # Bad Request. Zip not provided
        return nil, "Bad Request. Zip not provided."
      when 404
        # Not found. Five digit zip not recognized.
        return nil, "Not found. Five digit zip not recognized."
      when 500
        # Internal Server Error. Please contact support@taxjar.com
        return nil, "Internal Server Error. Please contact support@taxjar.com."
      else
        response.return!(request, result, &block)
      end
    }
  end

  private
    def self.authorization
      { "Authorization" => "Token token=#{Rails.application.secrets.taxjar_token}"}
    end

    def self.base_url(zip, city = nil, country = nil)
      url = "https://api.taxjar.com/locations/#{zip}"
      url += "/#{city}" if city.present?
      url += "?country=#{country}" if country.present?
      url
    end
end