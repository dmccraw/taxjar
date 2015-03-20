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

class Location < ActiveRecord::Base
  validates :state, presence: true
  validates :zip, presence: true
  validates :state_rate, presence: true
  validates :city, presence: true
  validates :city_rate, presence: true
  validates :combined_district_rate, presence: true
  validates :combined_rate, presence: true
end
