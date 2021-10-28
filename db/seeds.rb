puts "🌱 Seeding..."

puts "Deleting old data..."
# User.destroy_all
Listing.destroy_all
SavedListing.destroy_all


puts "Creating users..."
User.create!(email: 'abc123@gmail.com', password: 'abc12345', password_confirmation: 'abc12345', first_name: 'Robby', last_name: 'Jenkins', birthdate: '2000-2-23', phone: "5596870098")

puts "Creating listings..."
Listing.create!(user_id: 3, address: '109 Shelby Dr Los Angeles, CA, 90210', description: 'Cute, cozy place. Perfect for a couple or individual!', bedrooms: 1, bathrooms: 1.5, parking: 1, ac: true, washer_dryer: true, lease: '4 months', img_url: "https://medialibrarycdn.entrata.com/media_library/224/524da1b373c4c963.jpg")
Listing.create!(user_id: 4, address: '245 Yule Way Columbus, Ohio 43007', description: 'Perfect single family house!', bedrooms: 4, bathrooms: 2.5, parking: 2, ac: true, washer_dryer: true, lease: '8-12 months', img_url: "https://cdn.houseplansservices.com/content/h0rig2dbr8vsg0fcgqco7acmul/w991x660.jpg?v=9")

puts "Creating saved listings ..."
SavedListing.create!(user_id: 4, listing_id:8)