# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_with_object({}) do |(grade, roster), sorted_roster|
            sorted_roster[grade] = roster.sort
        end
    end
end