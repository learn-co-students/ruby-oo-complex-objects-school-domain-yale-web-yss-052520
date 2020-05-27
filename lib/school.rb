require 'pry'
# code here!
class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name, grade)
        # binding.pry
        @roster[grade] = [] if @roster[grade] == nil
        @roster[grade].push(name)
    end

    def grade(grd)
        @roster[grd]
    end

    def sort
        @roster.map{|key, value|
        # binding.pry
            @roster[key] = @roster[key].sort
        }
        @roster.sort.to_h
        # @roster
    end

end

# school = School.new("Bayside High School")
# school.add_student("Zach Morris", 9)
# pp school.roster