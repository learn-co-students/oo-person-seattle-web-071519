require 'pry'

class Person 

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    @@all = []

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
        @@all << self 
    end 
    
    def happiness=(adjustment)
        if  adjustment >= 10
            @happiness = 10
        elsif   adjustment < 0
            @happiness = 0
        else 
            @happiness = adjustment
        end 
    end 

def hygiene=(adjustment)
    # binding.pry
    if adjustment >= 10
        # binding.pry
        @hygiene = 10
    elsif adjustment < 0
        # binding.pry
        @hygiene = 0
    else
        @hygiene = adjustment
    end
    # binding.pry
    @hygiene 
end 

def happy?
    if @happiness > 7
        return true
    else 
        return false 
end 
end 

def clean?
    if @hygiene > 7
        return true
    else 
        return false 
    end
end 

def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
end

def take_bath
   self.hygiene = @hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end 
#calling self.hygiene on this calls the class Person
#and the attribute hygiene, and makes the (Person) dirtier by 3 points 

def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
end 

#why self?
## - Because we are making the Person(class) calling happier by 3 points

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3

    
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end 

#happiness is attached (owned by) friend 
def start_conversation(friend, topic) 
    case(topic)
when "politics" 
    friend.happiness -= 2
    self.happiness -= 2
   return "blah blah partisan blah lobbyist"
when "weather"
    friend.happiness += 1
    self.happiness += 1
    return "blah blah sun blah rain"
#use else because it tells us if none of the above check out then do the following
else 
    return "blah blah blah blah blah" 
    end 
end 



end