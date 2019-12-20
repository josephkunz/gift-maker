puts 'Cleaning database...'
Gift.destroy_all

puts 'Creating gifts...'
gift_attributes = [
  {
    title:         'Laptop case',
    description:      'leather, black, nice quality',
    price:  '120 €',
    status:        false,
    occasion:  'Christmas',
  },
  {
    title:         'Cookies',
    description:      'Christmas cookies',
    price:  'none',
    status:        true,
    occasion:  'Thank you',
  }
]
Gift.create!(gift_attributes)
puts 'Finished!'
