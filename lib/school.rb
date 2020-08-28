require 'pry'
class School
    attr_reader
    attr_writer 
    attr_accessor :school, :roster

    def initialize(school)
        @school = school
        @roster = {}
        #binding.pry
    end

    def add_student(student, grade)
        #binding.pry
            (@roster[grade] ||= []) << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
    end
end

#binding.pry
0