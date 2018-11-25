


  customers = [
    {
      name: "Craig",
      pets: [],
      cash: 1000
    },
    {
      name: "Zsolt",
      pets: [],
      cash: 50
    }
  ]

  new_pet = {
          name: "Bors the Younger",
          pet_type: :cat,
          breed: "Cornish Rex",
          price: 100
        }

  pet_shop = {
      pets: [
        {
          name: "Sir Percy",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "King Bagdemagus",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "Sir Lancelot",
          pet_type: :dog,
          breed: "Pomsky",
          price: 1000,
        },
        {
          name: "Arthur",
          pet_type: :dog,
          breed: "Husky",
          price: 900,
        },
        {
          name: "Tristan",
          pet_type: :dog,
          breed: "Basset Hound",
          price: 800,
        },
        {
          name: "Merlin",
          pet_type: :cat,
          breed: "Egyptian Mau",
          price: 1500,
        }
      ],
      admin: {
        total_cash: 1000,
        pets_sold: 0,
      },
      name: "Camelot of Pets"
    }

  # def new_pet_price(new_pet)
  #    for pet in new_pet
  #      p pet[:price]
  #    end
  #  end
  #
  #  new_pet_price(new_pet)





def price(newpet)
  for pet_hash in new_pet
    if pet_hash[:name] == newpet
      p pet_hash[:price]
    end
  end
end
#
price("Bors the Younger")

# def find_pet_by_name(pet_shop, pet)
#   for pet_hash in pet_shop[:pets]
#     if pet_hash[:name] == pet
#       p pet_hash
#     end
#   end
#   return nil
# end
#
# find_pet_by_name(pet_shop, "Arthur")
# pet_name = find_pet_by_name(pet_shop, "Arthur")[:name]
# p pet_name


#
# def price (pet_shop, pet)
#   for pet_hash in pet_shop[:pets]
#     if pet_hash[:name] == pet
#       p pet_hash[:price]
#     end
#   end
# end
#
# price(pet_shop, "Sir Lancelot").to_s

# cash_price = price(pet_shop, "Arthur")
#
# def remove_customer_cash(customer, amount)
#   p customer[:cash] -= amount
# end
#
# remove_customer_cash(customers[0], cash_price)


# def named_animal(pet_shop, pet)
#   for pet_hash in pet_shop[:pets]
#     if pet_hash[:name] == pet
#       p pet_hash[:name]
#     end
#   end
# end
#
# named_animal(pet_shop, "Arthur")
