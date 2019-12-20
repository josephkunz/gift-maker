puts 'Cleaning database...'
Gift.destroy_all
Recipient.destroy_all
User.destroy_all

puts 'Creating users...'

u2 = User.create!(email: "user2@example.com", password: "password")

puts 'Creating recipients...'

john = Recipient.create!(name: 'John Doe', address: 'Mexikoplatz')

puts 'Creating gifts...'
gift_attributes = [
  {
    title:         'Laptop case',
    description:      'leather, black, nice quality',
    price:  '120 €',
    occasion:  'Christmas',
    recipient: john,
    user_id: u2.id
  },
  {
    title:         'Cookies',
    description:      'Christmas cookies',
    price:  'none',
    occasion:  'Thank you',
    recipient: john,
    user_id: u2.id

  }
]
Gift.create!(gift_attributes)

puts 'Finished!'
