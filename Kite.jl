# Define a function to calculate the area of a kite
function kite_area(length1, length2)
    semi_perimeter = (length1 + length2) / 2
    return semi_perimeter * sqrt(semi_perimeter^2 - length1^2) * sqrt(semi_perimeter^2 - length2^2)
end

# Define a function to print the area of a kite
function print_kite_area(length1, length2)
    area = kite_area(length1, length2)
    println("Kite Properties:")
    println("Length 1: $length1")
    println("Length 2: $length2")
    println("Area: $area")
end

# Get the lengths from the user
while true
    try
        println("Enter the length of one of the diagonals of the kite:")
        length1 = parse(Float64, readline(stdin))

        if length1 <= 0
            println("Error: Length must be a positive number.")
            continue
        end

        println("Enter the length of the other diagonal of the kite:")
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

# Print the area of the kite
print_kite_area(length1, length2)