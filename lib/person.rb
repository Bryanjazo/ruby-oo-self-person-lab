# your code goes here
class Person
attr_accessor :bank_account, :happiness, :hygiene
attr_reader :name

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def bank_account=(bank_account)
  @bank_account = bank_account
end

def happiness=(index)
  @happiness = index
  @happiness = 10 if @happiness > 10
  @happiness = 0 if @happiness < 0
end
def happy?
  if happiness > 7
    true
  else
    false
  end
end

def hygiene=(hygiene)
  @hygiene = hygiene
  @hygiene = 10 if @hygiene > 10
  @hygiene = 0 if @hygiene < 0
end

def clean?
  if hygiene > 7
    true
  else
    false
  end
  end

  def get_paid(salary)
    self.bank_account = bank_account + salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    [friend, self].each do |x|
      x.happiness += 3
    end
      "Hi #{friend.name}! It's #{self.name}. How are you?"
end

  def start_conversation(friend, topic)
    if topic == "politics"
      [friend, self].each do |x|
        x.happiness -=2
      end
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
        [self, friend].each do |x|
          x.happiness += 1
      end
      'blah blah sun blah rain'
      else
        'blah blah blah blah blah'
      end
      end
end
