
class School
    def initialize(namen)
        @name = namen
        @roster = {} 
    end 
    attr_accessor :name 
    attr_accessor :roster 

    def add_student(stud_name, grade)
        if @roster[grade] 
            @roster[grade].push(stud_name)
        else @roster[grade] = [stud_name]  
            return @roster 
        end 
    end 

    def grade(grad)
        return @roster[grad] 
    end 
    def sort 
        sorted ={} 
        @roster.each do |year, stud_list| 
            sorted[year] = stud_list.sort 
        end 
        return sorted 
    end 
end 

aa = School.new("Bayside")
puts aa.roster 