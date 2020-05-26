# code here!
class School 
    def initialize(school)
        @school = school 
        @roster = {}
    end 
    
    attr_accessor :roster, :name, :grade

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end 
    
    def grade(num)
        roster.select {|k,v| k == num}.values.flatten
    end 

    def sort
        sorted_hash = {}
        roster.each {|k,v| sorted_hash[k] = v.sort}
        sorted_hash
    end 
    
end 
