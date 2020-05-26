# code here!
class School
    attr_accessor :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end 

    def add_student(name, grade)
        @name = name 
        @grade = grade
        if !@roster[grade] 
            @roster[grade] = []
        end 
            @roster[grade] << @name
    end 

    def grade(grade)
        roster[grade]
    end 

    def sort
        @roster.map {|key, value| [key, value.sort]}.to_h
    end 
end 