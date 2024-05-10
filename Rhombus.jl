# Define a function to calculate the area of a rhombus
function rhombus_area(length1, length2)
    return (1/2) * length1 * length2
end

# Define a function to print the area of a rhombus
function print_rhombus_area(length1, length2)
    area = rhombus_area(length1, length2)
    println("Rhombus Properties:")
    println("Length 1: $length1")
    println("Length 2: $length2")
    println("Area: $area")
end

# Get the lengths from the user
while true
    try
        println("Enter the length of one of the sides of the rhombus:")
        length1 = parse(Float64, readline(stdin))

        if length1 <= 0
            println("Error: Length must be a positive number.")
            continue
        end

        println("Enter the length of the other side of the rhombus:")
        length2 = parse(Float64, readline(stdin))

        if length2 <= 0
            println("Error: Length must be a positive number.")
            continue
        else
            break
        end
    catch
        println("Error: Invalid input. Please enter a valid number.")
    end
end

# Print the area of the rhombus
print_rhombus_area(length1, length2)