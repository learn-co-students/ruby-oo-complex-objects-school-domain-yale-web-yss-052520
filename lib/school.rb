# School class would be referred to as a "model" in domain model context
class School 
    attr_accessor :name, :roster
    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(name, grade)
        #Using a ternary operator - if the key does not yet exist just make the value an array of one element containing the student's name. Otherwise, you append name. 
        @roster[grade].nil? ? @roster[grade] = [name] : @roster[grade] << name
    end
    
    def grade(year)
        @roster[year]
    end 

    def sort
        # Important to remember that map returns an array and therefore will need to convert between array and hash to return roster to its original form.
        @roster.map {|grade, students| [grade, students.sort]}.to_h
    end 
end 