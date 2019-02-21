# your code goes here
class Person
    attr_reader :name,:happiness,:hygiene
    attr_accessor :bank_account

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness > 0 && happiness < 11
        @happiness = happiness
        elsif happiness >10
            @happiness =10
        else
            @happiness =0
        end
     end

     def hygiene=(hygiene)
        if hygiene > 0 && hygiene < 11
        @hygiene = hygiene
        elsif hygiene >10
            @hygiene =10
        else
            @hygiene =0
        end
     end

    def clean?
        if @hygiene > 7
             true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
             true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        # new_hygiene =
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness+2
        self.hygiene = @hygiene -3
        "♪ another one bites the dust ♫"
    end
    # def happiness_points=(happiness_points)
    #     @happiness_points = happiness_points
    # end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation (name,topic)
    if topic == "politics"
        self.happiness = @happiness -2
        name.happiness -=2
        "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness = @happiness +1
        name.happiness +=1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end
    end

end
