# code here!

class School

    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end
    def roster
        @roster
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.map do |value,key|
            [value, key.sort!]
        end.to_h
    end
end