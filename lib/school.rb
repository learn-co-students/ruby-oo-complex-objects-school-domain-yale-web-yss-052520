class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ? roster[grade].append(student_name) : roster[grade] = [student_name]
    end

    def grade(grade)
        roster[grade]
    end

    def sort()
        @roster.each {|k,v| @roster[k] = v.sort()}
        @roster
    end
end