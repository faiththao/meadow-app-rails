# README.md
Meadow

![user_stories](https://user-images.githubusercontent.com/79170369/136986348-ceccdb65-33b6-4da5-bfc9-b58abf13ce75.png)
Users can login and sign up to save the homes that they are interested in and also track the listings they make themselves.
Users can create listings to help other families and individuals.
Users can find listings based off of filters to save time and find exactly what they are looking for.

# The Models
![models2 0](https://user-images.githubusercontent.com/79170369/136986329-6b2b4d67-5b4f-4f40-b3e5-8b5f1c0ebd6e.jpg)
# User
A User has many saved_listings through listings
- id
- email
- password_digest
- first name
- last name
- birthday
- phone number

A Listing has many users
- id
- user_id
- address
- description
- bedrooms
- baths
- parking
- ac
- washer_dryer
- lease

A Saved Listing belongs to user and listing
- id
- user_id
- listing_id

# API Documentation
GET /me to sessions#create to login
DELETE "logout" to sessions#destroy to logout

POST /signup to users#create to create a user
Returns a JSON 
{
  id: 1
  email: "this.email@gmail.com"
  password: "abc123"
  password_confirmation: "abc123"
  first_name: "John"
  last_name: "Appleseed"
  birthday: "1/1/2000"
  phone_number: 2223223445
}

POST listings 
Returns a JSON
{
  id: 1
  user_id: 1
  address: "5567 Fake Way City, State, Zipcode"
  description: "description"
  bedrooms: 2
  baths: 1.5
  parking: true
  ac: true
  washer_dryer: true
  lease: 8 months
}


# Wire Frames
![wire_frame1](https://user-images.githubusercontent.com/79170369/136986383-059eaa0d-7e99-47cb-80ea-4789f1ce1b5e.png)
![wire_frame2](https://user-images.githubusercontent.com/79170369/136986408-b6ef468c-67d8-480b-9e3a-a04baeb99f06.png)
![wire_frame3](https://user-images.githubusercontent.com/79170369/136986462-eccd1380-8417-4f78-859b-8895996c674d.png)
![wire_frame4](https://user-images.githubusercontent.com/79170369/136986493-92b9b66d-e30c-48a9-9ff8-db21fbe26c40.png)
