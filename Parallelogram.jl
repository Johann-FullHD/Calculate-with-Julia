# Define a function to calculate the area of a parallelogram
function parallelogram_area(base, height)
    return base * height
end

# Define a function to print the area of a parallelogram
function print_parallelogram_area(base, height)
    area = parallelogram_area(base, height)
    println("Parallelogram Properties:")
    println("Base: $base")
    println("Height: $height")
    println("Area: $area")
end

# Get the base and height from the user
while true
    try
        println("Enter the length of the base of the parallelogram:")
        base = parse(Float64, readline(stdin))

        if base <= 0
            println("Error: Base must be a positive number.")
            continue
        end

        println("Enter the height of the parallelogram:")
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

# Print the area of the parallelogram
print_parallelogram_area(base, height)