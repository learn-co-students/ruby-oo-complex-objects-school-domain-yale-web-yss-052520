# code here!

class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(student, age)
        # conditional assignment operator; if key is undefined, then set [] to the key
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
    return sorted
    end

end