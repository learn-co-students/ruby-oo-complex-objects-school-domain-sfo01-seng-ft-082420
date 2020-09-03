class School
    attr_reader :name, :roster


    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade_number)
        roster.each do |student , grade|
            if student == grade_number
                return grade
            end
        end
        
    end 

    def sort
        roster.each do |student, grade|
            roster[student] = grade.sort
        end
        roster
    end


end
