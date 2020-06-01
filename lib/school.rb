# code here!
require 'pry'
class School
    attr_accessor :student, :roster 

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(student, grade)
        if self.roster.has_key?(grade)
            roster[grade] << student
        else 
            self.roster[grade] = [student]
        end
    end 

    def grade(grade)
        self.roster[grade]
    end 
    
    def sort
        sorted_hash = {}
        self.roster.each do |grade, names|
             sorted_hash[grade] = names.sort
        end
        return sorted_hash
    end

end 
