class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_reader :roster

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade].push(name)
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map { |key, array| [key, array.sort] }.to_h
    end

end