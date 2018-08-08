require 'pry'

class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(nameIn, bank_account=25, happiness=8, hygiene=8)
    @name = nameIn
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  # def happiness=(number)
  #   @happiness = number
  #   if @happiness > 10
  #     @happiness = 10
  #   elsif @happiness < 0
  #     @happiness = 0
  #   end
  # end

  def happiness
    if @happiness > 10
      @happiness = 10
      return @happiness
    elsif @happiness < 0
      @happiness = 0
      return @happiness
    else
      return @happiness
    end
  end

  # def hygiene=(number)
  #   @hygiene = number
  #   if @hygiene > 10
  #     @hygiene = 10
  #   elsif @hygiene < 0
  #     @hygiene = 0
  #   end
  # end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
      return @hygiene
    elsif @hygiene < 0
      @hygiene = 0
      return @hygiene
    else
      return @hygiene
    end
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(amount)
    @bank_account += amount
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end

# p = Person.new("name", 25, 8, 4)
#
# binding.pry
