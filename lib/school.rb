require 'pry'

class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if roster.key?(grade)
            roster[grade] << student_name
        else
            roster[grade] = []
            roster[grade] << student_name
        end
    end  
    
    def grade(grade)
        roster[grade]
    end
    
    def sort
        sorted = {}
        roster.each do |grade, names|
            # binding.pry
            sorted[grade] = names.sort
        end
        sorted
    end
end