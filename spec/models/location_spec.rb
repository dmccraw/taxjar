# == Schema Information
#
# Table name: locations
#
#  id                     :integer          not null, primary key
#  state                  :string
#  zip                    :string
#  state_rate             :decimal(7, 3)
#  city                   :string
#  city_rate              :decimal(7, 3)
#  county                 :string
#  county_rate            :decimal(7, 3)
#  combined_district_rate :decimal(7, 3)
#  combined_rate          :decimal(7, 3)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'rails_helper'

RSpec.describe Location, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:zip) }
    it { is_expected.to validate_presence_of(:state_rate) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:city_rate) }
    it { is_expected.to validate_presence_of(:combined_district_rate) }
    it { is_expected.to validate_presence_of(:combined_rate) }
  end
end
