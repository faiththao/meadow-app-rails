puts "🌱 Seeding..."

puts "Deleting old data..."
# User.destroy_all

puts "Creating users..."
# User.create!(email: 'abc123@gmail.com', password: 'abc12345', password_confirmation: 'abc12345', first_name: 'Robby', last_name: 'Jenkins', birthdate: '2000-2-23', phone: "5596870098")

puts "Creating listings..."
Listing.create!(user_id: 3, address: '109 Shelby Dr Los Angeles, CA, 90210', description: 'Cute, cozy place. Perfect for a couple or individual!', bedrooms: 1, bathrooms: 1.5, parking: 1, ac: true, washer_dryer: true, lease: '4 months')