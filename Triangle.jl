# Define a function to calculate the area of a triangle
function calculate_area(base, height)
    return 0.5 * base * height
end

# Define a function to calculate the perimeter of a triangle
function calculate_perimeter(side1, side2, side3)
    return side1 + side2 + side3
end

# Define a function to print the area and perimeter of a triangle
function print_triangle_properties(base, height, side1, side2, side3)
    area = calculate_area(base, height)
    perimeter = calculate_perimeter(side1, side2, side3)
    println("Triangle Properties:")
    println("Base: $base")
    println("Height: $height")
    println("Side 1: $side1")
    println("Side 2: $side2")
    println("Side 3: $side3")
    println("Area: $area")
    println("Perimeter: $perimeter")
end

# Get the base, height, and sides from the user
while true
    try
        println("Enter the base of the triangle:")
        base = parse(Float64, readline(stdin))

        if base <= 0
            println("Error: Base must be a positive number.")
            continue
        end

        println("Enter the height of the triangle:")
        height = parse(Float64, readline(stdin))

        if height <= 0
            println("Error: Height must be a positive number.")
            continue
        end

        println("Enter the length of side 1:")
        side1 = parse(Float64, readline(stdin))

        if side1 <= 0
            println("Error: Side 1 must be a positive number.")
            continue
        end

        println("Enter the length of side 2:")
        side2 = parse(Float64, readline(stdin))

        if side2 <= 0
            println("Error: Side 2 must be a positive number.")
            continue
        end

        println("Enter the length of side 3:")
        side3 = parse(Float64, readline(stdin))

        if side3 <= 0
            println("Error: Side 3 must be a positive number.")
            continue
        end

        if side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
            break
        else
            println("Error: The entered sides do not form a valid triangle.")
        end
    catch
        println("Error: Invalid input. Please enter a valid number.")
    end
end

# Print the area and perimeter of the triangle
print_triangle_properties(base, height, side1, side2, side3)