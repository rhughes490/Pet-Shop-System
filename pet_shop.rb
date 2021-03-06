def pet_shop_name(pet_shop)
    return pet_shop[:name]
end
def total_cash(pet_shop)
    return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, addition)
    return pet_shop[:admin][:total_cash] += addition
end

def pets_sold(pet_shop)
    return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, extra_pets)
    return pet_shop[:admin][:pets_sold] += extra_pets
end
def stock_count(pet_shop)
    return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed)
    breeds = []
    for pet in pet_shop[:pets]
            if pet[:breed] == breed
            breeds << breed
            end
    end
    return breeds
end

def find_pet_by_name(pet_shop, name)
    for pet in pet_shop[:pets]
            if pet[:name] == name
                return pet
            end
    end
      for pet in pet_shop[:pets]
          if pet[:name] != name
              return nil
          end
     end
end 

def remove_pet_by_name(pet_shop, pet_name)
    for pet in pet_shop[:pets]
            if pet[:name] == pet_name
                pet_shop[:pets][0][:name].delete(pet_name)
            end
    end
end

def add_pet_to_stock(pet_shop, new_pet)
    new_pet = new_pet[0]
    pet_shop[:pets].push(new_pet)
end
def stock_count(pet_shop)
    return pet_shop[:pets].length()
end

def customer_cash(index)
    index = customers[0][:cash]
    return index
end

# def remove_customer_cash(customer, pet_name)
#     petname = pet[:price]
#     return 
# end