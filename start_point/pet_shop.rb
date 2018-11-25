def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_sold)
  return pet_shop[:admin][:pets_sold] += number_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed_type)
  breed_type_array = []
  for item in pet_shop[:pets]
    if item[:breed] == breed_type
      breed_type_array << item[:name]
    end
  end
  return breed_type_array
end

def find_pet_by_name(pet_shop, pet_name)
  # look in the hashes within the pets array to find the name
  for pet_hash in pet_shop[:pets]
    if pet_hash[:name] == pet_name
      return pet_hash
    end
  end
  return nil
end



def remove_pet_by_name(pet_shop, name)
  pet_to_be_deleted = find_pet_by_name(pet_shop, name)
    pet_shop[:pets].delete(pet_to_be_deleted)
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

# OPTIONAL

def customer_can_afford_pet(customer, new_pet)
  if customer_cash(customer) >= 100
    return true
  else false
  end
end


# def sell_pet_to_customer(pet_shop, pet, customer)
#         customer[:pets] << pet
#         customer[:cash] -= 900
#         pet_shop[:admin] = {
#           total_cash: 1900,
#           pets_sold: 1}
#
# end
# below using above defined methods (works)

# def sell_pet_to_customer(pet_shop, pet, customer)
#
#       add_pet_to_customer(customer, pet)
#       remove_customer_cash(customer, 900)
#       increase_pets_sold(pet_shop, 1)
#       add_or_remove_cash(pet_shop, 900)
# end

# setting a new price methos

def price(pet_shop, pet)
  for pet_hash in pet_shop[:pets]
    if pet_hash[:name] == pet
      return pet_hash[:price]
    end
  end
end


def sell_pet_to_customer(pet_shop, pet, customer)
    pet_name = find_pet_by_name(pet_shop, "Arthur")[:name]

# when pet exists AND customer has enough cash
  if  find_pet_by_name(pet_shop, pet_name) == pet && customer_can_afford_pet(customer, pet) == true
      add_pet_to_customer(customer, pet)
      remove_customer_cash(customer, price(pet_shop, pet_name))
      increase_pets_sold(pet_shop, 1)
      add_or_remove_cash(pet_shop, price(pet_shop, pet_name))

# when pet does not exist or customer does not have enough funds
elsif find_pet_by_name(pet_shop, pet) == nil || customer_can_afford_pet(customer, pet) == false
      customer_pet_count(customer)
      pets_sold(pet_shop)
      customer_cash(customer)
      total_cash(pet_shop)
  end
end

# other improvements : change arthur to variable
