# PHASE 2

def convert_to_int(str)
  begin 
    Integer(str)
  rescue 
  return nil
  end
end

# PHASE 3


def feed_me_a_fruit
  
  puts "Hello, I am a friendly monster. :)"
  begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp

  reaction(maybe_fruit) 
  rescue
    puts "Try again. Give me a fruit I like."
    retry
  end
end  

def reaction(maybe_fruit)
  fruits = ["apple", "banana", "orange"]
  if fruits.include?(maybe_fruit)
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    # raise StandardError 
    raise "Try again. Give me a fruit I like."
    # retry
  end 
end



# PHASE 4
class BestFriend

  def initialize(name1, yrs_known, fav_pastime)
    raise "Need more characters." if name1.empty? || fav_pastime.empty?

    @name = name1     
    @fav_pastime = fav_pastime
    if yrs_known >= 5  
     @yrs_known = yrs_known 
    else 
       raise "Haven't known each other long enough."
    end
  end

  def talk_about_friendship
    prod = 1000 * @yrs_known
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{prod}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end
