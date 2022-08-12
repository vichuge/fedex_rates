require 'fedexvichuge'

credentials = {
  key: "xxxxxxxxxxxxxxxx",
  password: "xxxxxxxxxxxxxxxxxxxxxxxxx",
  account_number: "xxxxxxxxx",
  meter_number: "xxxxxxxxx"
}

quote_params = {
  address_from: {
         zip: "64000",
         country: "MX"
  },
     address_to: {
         zip: "64000",
         country: "MX"
  },
     parcel: {
         length: 25.0,
         width: 28.0,
         height: 46.0,
         distance_unit: "cm",
         weight: 6.5,
         mass_unit: "kg"
  }
}

rates = Fedex::Rates.get(credentials, quote_params)
pp rates