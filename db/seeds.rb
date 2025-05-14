# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create(email:"ludwigtheGOAT@outlook.bard",first_name:"Ludovico",last_name:"Bardeur")
User.create(email:"nek41@gmail.com",first_name:"Nek",last_name:"Rock")
User.create(email:"johndoe@gmail.com",first_name:"John",last_name:"User")
User.create(email:"shrek@gmail.com",first_name:"Shrek",last_name:"Ogre")
User.create(email:"edlhopital@gmail.com",first_name:"Edward",last_name:"LHopital")
User.create(email:"pepe@gmail.com",first_name:"Pedro",last_name:"Perez")
User.create(email:"mayortimestwo@gmail.com",first_name:"Mayor",last_name:"Mayor")
User.create(email:"gottagofast@gmail.com",first_name:"Sonic",last_name:"The Hedgehog")
User.create(email:"ilovelatinas@gmail.com",first_name:"Shadow",last_name:"The Hedgehog")
User.create(email:"myself@gmail.com",first_name:"My",last_name:"Self")

Chat.create(sender_id:1,receiver_id:5)
Chat.create(sender_id:8,receiver_id:9)
Chat.create(sender_id:1,receiver_id:7)
Chat.create(sender_id:1,receiver_id:2)
Chat.create(sender_id:10,receiver_id:6)
Chat.create(sender_id:3,receiver_id:10)
Chat.create(sender_id:3,receiver_id:6)
Chat.create(sender_id:2,receiver_id:9)
Chat.create(sender_id:7,receiver_id:9)
Chat.create(sender_id:3,receiver_id:2)

Message.create(user_id:1,chat_id:1,body:"Would you like to join me for tea?")
Message.create(user_id:5,chat_id:1,body:"Any day, fine mr.")
Message.create(user_id:1,chat_id:4,body:"Where are you at.")
Message.create(user_id:2,chat_id:4,body:"Fishing.")
Message.create(user_id:8,chat_id:2,body:"Give me back my pasword.")
Message.create(user_id:9,chat_id:2,body:"...")
Message.create(user_id:8,chat_id:2,body:"Why do you wanna go to mexico?")
Message.create(user_id:9,chat_id:2,body:"I just love latinas Sonic, Adios amigo!")
Message.create(user_id:1,chat_id:3,body:"Would you like to join me, I could do with a mayor.")
Message.create(user_id:7,chat_id:3,body:"Im a Sgt...")
Message.create(user_id:1,chat_id:3,body:"Not anymore.")
Message.create(user_id:10,chat_id:5,body:"This is sad.")
Message.create(user_id:3,chat_id:6,body:"Who is this?")
Message.create(user_id:10,chat_id:6,body:"Myself.")
Message.create(user_id:3,chat_id:7,body:"Default.")
