# Calculate a Grade

# I worked on this challenge  with: Benjamin Flores


# Your Solution Below

def get_grade(grade)
    if grade >= 90
        return "A"
    elsif grade <= 90 && grade >= 80
        return "B"
    elsif grade <= 80 && grade >= 70
        return "C"
    elsif grade <= 70 && grade >= 60
        return "D"
    else 
        return "F"
    end
end