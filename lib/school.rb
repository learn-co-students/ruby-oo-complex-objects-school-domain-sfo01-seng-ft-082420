# code here!
require 'pry'

class School
    attr_accessor :roster, :name

    def initialize(roster)
        @roster = {}
        @name = name
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        sorted = {}
        @roster.each do |grade, name_array|
            sorted[grade] = name_array.sort
        end
        sorted
    end 
end


# school = School.new("Bayside High School")