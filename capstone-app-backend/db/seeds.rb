User.create(email: "test@test.com", user_name: "test", password: "password")
User.create(email: "tabitha@test.com", user_name: "Tabitha", password: "password")
User.create(email: "tandy@test.com", user_name: "Tandy", password: "password")
User.create(email: "tulip@test.com", user_name: "Tulip", password: "password")
User.create(email: "telulah@test.com", user_name: "Telulah", password: "password")

cards_list = JSON.parse(File.read(Rails.root.join("db", "cards.json")))
cards_list.each do |card|
  card_data = card.to_h
  Card.create(name: card_data["name"], definition: card_data["summary"], image_url: card_data["image"])
end
