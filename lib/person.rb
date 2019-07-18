# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value > 10
            value = 10
        elsif value < 0
            value = 0
        end
        @happiness = value
    end

    def hygiene=(value)
        if value > 10
            value = 10
        elsif value < 0
            value = 0
        end
        @hygiene = value
    end

    def happy?
        return @happiness > 7
    end

    def clean?
        return hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(partner,topic)
        if topic == "politics"
            partner.happiness -= 2
            self.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        end
        if topic == "weather"
        partner.happiness += 1
        self.happiness += 1
        return 'blah blah sun blah rain'
        end
            return 'blah blah blah blah blah'
    end
end