# Define a function to calculate the area of a circle
function calculate_area(radius)
    return pi * radius^2
end

# Define a function to calculate the circumference of a circle
function calculate_circumference(radius)
    return 2 * pi * radius
end

# Define a function to print the area and circumference of a circle
function print_circle_properties(radius)
    area = calculate_area(radius)
    circumference = calculate_circumference(radius)
    println("Circle Properties:")
    println("Radius: $radius")
    println("Area: $area")
    println("Circumference: $circumference")
end

# Get the radius from the user
while true
    try
        println("Enter the radius of the circle:")
        radius = parse(Float64, readline(stdin))
        if radius <= 0
            println("Radius must be a positive number. Please try again.")
            continue
        end
        break
    catch e
        println("Invalid input. Please enter a numeric value.")
    end
end

# Print the area and circumference of the circle
print_circle_properties(radius)