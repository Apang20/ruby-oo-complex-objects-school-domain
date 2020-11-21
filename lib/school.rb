class School
attr_reader :roster #method to read what it is

def initialize(school_name)
    @school = school_name 
    @roster = {} #method to set it to something
end

def add_student(name, grade)
    roster[grade] ||= []
    # ||= if truthy, move on to next line
    # else set equal to [] then move on to next line
    roster[grade] << name 
    # if !@roster[grade]
    #     @roster[grade] = []
    #     @roster[grade] << name 
    # else
    #     @roster[grade] << name
    # end
end 

def grade(grade)
    roster[grade]
end 

def sort
sorted = {}
roster.each do | grades, names|
sorted[grades] = names.sort 
#names.sort!
end
sorted
end 


#@school.add_student("Homer Simpson", 9)
end 