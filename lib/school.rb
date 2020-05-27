# code here!
class School
    def initialize(name)
        @name=name
        @roster={}
    end
    attr_accessor :name, :roster
    def add_student(name, grade)
        self.roster[grade] ? self.roster[grade] << name : self.roster[grade]=[name]
    end
    def grade(grade)
        self.roster[grade]
    end
    def sort
        self.roster.each {|grade, students| roster[grade].sort!}
    end
end
