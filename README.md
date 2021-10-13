# README.md
Meadow

![user_stories2 0](https://user-images.githubusercontent.com/79170369/137190061-f58fd70e-96dc-4810-a412-7f3f5f83d0b2.png)

Users can:
- sign up to save the homes that they are interested in and also track the listings they make themselves
- login
- logout
- view listings
- create listings to help other families and individuals
- find listings based off of filters to save time and find exactly what they are looking for
  - city
  - state
  - utilities
    - washer/dryer
    - ac
  - parking spots
  - bedrooms
  - bathrooms


Frond End: https://github.com/faiththao/meadow-app-js

Back End: https://github.com/faiththao/meadow-app-rails


# The Models
![model3 1](https://user-images.githubusercontent.com/79170369/137021300-6527dcaa-bd8d-46c5-b67e-fad65d1f032a.png)

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
![Apidoc](https://user-images.githubusercontent.com/79170369/136994885-f881134c-3142-4b67-85a0-d9da6e04cc91.png)

GET ```/me``` to sessions#create to login

DELETE ```/logout``` to sessions#destroy to logout

POST ```/signup``` to users#create to create a user
Returns a JSON 
```
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
```
POST listings
Returns a JSON
```
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
```

# Wire Frames
![wire_frame1](https://user-images.githubusercontent.com/79170369/136986383-059eaa0d-7e99-47cb-80ea-4789f1ce1b5e.png)
![wire_frame2](https://user-images.githubusercontent.com/79170369/136986408-b6ef468c-67d8-480b-9e3a-a04baeb99f06.png)
![wire_frame3](https://user-images.githubusercontent.com/79170369/136986462-eccd1380-8417-4f78-859b-8895996c674d.png)
![wire_frame4](https://user-images.githubusercontent.com/79170369/136986493-92b9b66d-e30c-48a9-9ff8-db21fbe26c40.png)
