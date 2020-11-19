class School
    attr_reader :roster 

    def initialize(school_name)
        @school = school_name
        @roster = {} #set it 
    end

    # def roster 
    #     @roster
    # end 

    def add_student(name, grade)
        if !@roster[grade] 
        @roster[grade] = []
        @roster[grade] << name
        else 
         @roster[grade] << name 
    end
end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        roster.each do |grade, name|
        roster[grade] = name.sort
        end
        roster 

    end 
end 