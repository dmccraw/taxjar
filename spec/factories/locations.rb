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

FactoryGirl.define do
  factory :location do
    state "MyString"
    zip "MyString"
    state_rate ""
    city "MyString"
    city_rate "9.99"
    county ""
    county_rate ""
    combined_district_rate ""
    combined_rate "9.99"
  end

end
