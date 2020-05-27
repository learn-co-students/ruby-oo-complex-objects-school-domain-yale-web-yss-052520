# code here!
# took inspiration from Richard Burd's solution after experimenting with https://gist.github.com/Jauny/3869758

class School 
attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end    

    
    def add_student(student_name, student_grade)
        roster[student_grade] ||= []
        roster[student_grade] << student_name
    end    

    def grade(student_grade)
        roster.detect do |x, y| 
            if x == student_grade
              return y 
            end 
          end 
    end    

    def sort
        sorted_roster = {}
        roster.each do |x, y|
            sorted_roster[x] = y.sort
        end
        sorted_roster    
    end

end    

# school = School.new("Bayside High School")

