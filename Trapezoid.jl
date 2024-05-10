# Define a function to calculate the area of a trapezoid
function trapezoid_area(base1, base2, height)
    return (1/2) * (base1 + base2) * height
end

# Define a function to print the area of a trapezoid
function print_trapezoid_area(base1, base2, height)
    area = trapezoid_area(base1, base2, height)
    println("Trapezoid Properties:")
    println("Base 1: $base1")
    println("Base 2: $base2")
    println("Height: $height")
    println("Area: $area")
end

# Get the base1, base2, and height from the user
while true
    try
        println("Enter the length of Base 1 of the trapezoid:")
        base1 = parse(Float64, readline(stdin))

        if base1 <= 0
            println("Error: Base 1 must be a positive number.")
            continue
        end

        println("Enter the length of Base 2 of the trapezoid:")
        base2 = parse(Float64, readline(stdin))

        if base2 <= 0
            println("Error: Base 2 must be a positive number.")
            continue
        end

        println("Enter the height of the trapezoid:")
        height = parse(Float64, readline(stdin))

        if height <= 0
            println("Error: Height must be a positive number.")
            continue
        else
            break
        end
    catch
        println("Error: Invalid input. Please enter a valid number.")
    end
end

# Print the area of the trapezoid
print_trapezoid_area(base1, base2, height)