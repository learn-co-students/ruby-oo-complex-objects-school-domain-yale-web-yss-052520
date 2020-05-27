# code here!
require 'pry'

class School
    def initialize(name)
        @name = name 
        @roster = {}
    end

    def roster
        @roster 
    end

    # def roster=(roster) 
    #     roster = {}
    #     @roster =  roster
    # end 

    def add_student(student_name, student_grade)
        
        # @roster[student_grade] = [] if @roster.nil?
        if @roster.has_key?(student_grade) == false
         @roster[student_grade] = [] 
        end
        #  if (@roster.member?(student_grade) == false)
        @roster[student_grade] << student_name 
    end  

    def grade(grade)
        @roster[grade]
    end

    def sort 
        new_hash = {}
        @roster.each do |key, value| 
            new_hash[key] = value.sort
        end
        new_hash  
    end
end
