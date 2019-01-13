require('pry')

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, amount)
  pet_shop[:admin][:pets_sold] = 2
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  found = []
  for pet in pet_shop[:pets]
    found << pet if (pet[:breed] == breed)
  end
  return found
end

# difficulty understanding
def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name]== name
      return pet
    end
  end
  return nil
end

# difficulty understanding
def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name]== name
      pet_shop[:pets].delete(pet)
    end
  end
  return nil
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)

end

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customers, amount)
  customers[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets].push(new_pet)
end

# #

def customer_can_afford_pet(customer, new_pets)
  if customer[:cash] >= new_pets[:price]
    return true
  else
    return false
  end
end

 # binding.pry
# def sell_pet_to_customer(customer)
#   pets_sold = pets[:name]
#     if customer[:cash] >= pets[:price]
#       return true
#     else
#       return false
#     end
#     sum = total_cash(pet_shop)
#     assert_equal =[:admin][:total_cash]
#     return total_cash
#
# # assert - (amount of pets, customer)
# # assert2- (amount of pets sold, pet shop)
# # assert3- (remainder of customers cash (1000-900))
# # assert4- (amount admin has after selling Arthur(1900)
# end
  # binding.pry
# def sell_pet_to_customer(pet_shop, pet, customer)
#   return nil unless pet
#   return nil unless customer_can_afford_pet(customer, pet)
#   add_or_remove_cash(pet_shop, pet[:price])
#   customer[:cash] -= pet[:price]
#   remove_pet_by_name(pet_shop, pet)
#   add_pet_to_customer(customer, pet)
#   increase_pets_sold(pet_shop, 1)
# end









#bottom
