# queue in front of Big Mamma restaurant
class Person
  def initialize(name)
    @name = name
  end
end

# it's 6 PM
hungry_people = []

# around 6:15 PM hungry hip people start to queue for this amazing resto
hungry_people.push(Person.new('Vlatka'))
hungry_people.push(Person.new('Aimad'))
hungry_people.push(Person.new('Miriam'))

# it's 7PM and the resto is opened!
# the first person in the queue gets in
hungry_people.shift # returns #<Person:0x007fd4ba076f48 @name="Vlatka">



