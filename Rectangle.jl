# Define a function to calculate the area of a rectangle
function calculate_area(length, width)
    return length * width
end

# Define a function to calculate the perimeter of a rectangle
function calculate_perimeter(length, width)
    return 2 * (length + width)
end

# Define a function to print the area and perimeter of a rectangle
function print_rectangle_properties(length, width)
    area = calculate_area(length, width)
    perimeter = calculate_perimeter(length, width)
    println("Rectangle Properties:")
    println("Length: $length")
    println("Width: $width")
    println("Area: $area")
    println("Perimeter: $perimeter")
end

# Get the length and width from the user
while true
    try
        println("Enter the length of the rectangle:")
        length = parse(Float64, readline(stdin))
        if length <= 0
            println("Length must be a positive number. Please try again.")
            continue
        end
        break
    catch e
        println("Invalid input. Please enter a numeric value.")
    end
end

while true
    try
        println("Enter the width of the rectangle:")
        width = parse(Float64, readline(stdin))
        if width <= 0
            println("Width must be a positive number. Please try again.")
            continue
        end
        break
    catch e
        println("Invalid input. Please enter a numeric value.")
    end
end

# Print the area and perimeter of the rectangle
print_rectangle_properties(length, width)
