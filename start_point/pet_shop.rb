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
