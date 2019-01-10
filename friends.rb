def get_name(person)
  return person[:name]
end

def fav_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snacks in person[:favourites][:snacks]
    return true if snacks == food
  end
end

def add_friend(person, friend)
    before_size = person[:friends].length()
    person[:friends].push(friend)
    return true if before_size < person[:friends].length()
end


def remove_friend(person, friend)
    before_size = person[:friends].length()
    person[:friends].delete(friend)
    return true if before_size > person[:friends].length()
end

def total_monies(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_monies(person1, person2, amount)
  p1_initial_balance = person1[:monies]
  p2_initial_balance = person2[:monies]
  person1[:monies] -= amount
  person2[:monies] += amount
  return true if p1_initial_balance > person1[:monies] && p2_initial_balance < person2[:monies]
end

def favourite_foods(people)
  foods = []
  for person in people
    foods += person[:favourites][:snacks]
  end
  return foods
end

def no_friends(people)
  friendless = []
  for person in people
    if person[:friends].empty?
      friendless.push(person[:name])
    end
  end
  return friendless
end
