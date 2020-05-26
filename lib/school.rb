# code here!
class School

    attr_accessor :name, :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            value.sort!
        end
        @roster.sort.to_h
    end
end