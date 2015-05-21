require 'pry'

require_relative 'building'
require_relative 'apartment'
require_relative 'tenant'

building_one = Building.new floors: 5, address: 'WDI Heights, 1 HA Road, GAVille', num_of_apartments: 15, age: 100, concierge: true

a1 = Apartment.new price:3000, occupied: false, balcony: true, sqft: 2700, bedrooms: 3, bathrooms: 2
a2 = Apartment.new price:900, occupied: true, balcony: true, sqft: 1500, bedrooms: 3, bathrooms: 2
a3 = Apartment.new price:1400, occupied: false, balcony: false, sqft: 1000, bedrooms: 3, bathrooms: 2

tdawg1 = Tenant.new name: 'Pamela', sex: 'yes', apartment: a2
tdawg2 = Tenant.new name: 'Porscha', sex: 'yes', apartment: a1
tdawg3 = Tenant.new name: 'Becky', sex: 'no', apartment: a3

[a1, a2, a3].each { |appt| building_one.apartments << appt }
[tdawg1, tdawg2, tdawg3].each { |tent| building_one.apartments.first.tenants << tent }




binding.pry
nil