puts "Removing old data..."
Company.delete_all
Dev.delete_all
Freebie.delete_all

puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "Pizza", value: 5, company_id: 1, dev_id: 1)
Freebie.create(item_name: "Hot Dog", value: 3, company_id: 2, dev_id: 3)
Freebie.create(item_name: "Burger", value: 10, company_id: 4, dev_id: 4)
Freebie.create(item_name: "Ice Cream", value: 2, company_id: 3, dev_id: 1)
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
