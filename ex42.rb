## Animal is-a class 
class Animal
end

## Dog is-a class under class animal
class Dog < Animal

    def initialize(name)
        #dog has-a name
        @name = name
    end
end

## cat is a class under class animal
class Cat < Animal

    def initialize(name)
        ## cat has-a name
        @name = name
    end
end

## Person is-a class
class Person

    def initialize(name)
        ## Person has-a name
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet 
end

## Employee is-a class under class Person
class Employee < Person

    def initialize(name, salary)
        ## ?? hmm what is this strange magic?
        super(name)
        ## Employee has-a salary 
        @salary = salary
    end

end

## Fish is-a class
class Fish
end

## Salmon is-a class under class Fish
class Salmon < Fish
end

## Halibut is a class under class Fish
class Halibut < Fish
end


## Rover is-a Dog
rover = Dog.new("Rover")

## Satan is-a cat
satan = Cat.new("Satan")

## Mary is-a person
mary = Person.new("Mary")

## Mary has-a pet
mary.pet = satan

## Frank is-a Employee
frank = Employee.new("Frank", 120000)

## Frank has-a pet
frank.pet = rover

## Flipper is-a fish
flipper = Fish.new()

## Crouse is-a Salmon
crouse = Salmon.new()

## Harry is-a Halibut
harry = Halibut.new()