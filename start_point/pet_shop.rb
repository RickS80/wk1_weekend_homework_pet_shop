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
  return pet_shop[:admin][:pets_sold].to_i
end

def increase_pets_sold(pet_shop, soldpet)
  return pet_shop[:admin][:pets_sold] += soldpet
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

def find_pet_by_name(pet_shop, named_animal)
  # look in the hashes within the pets array to find the name
  for pet in pet_shop[:pets]
    if pet[:name] == named_animal
      return pet
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
  if customer[:cash] >= 100
    return true
  else false
  end
end
