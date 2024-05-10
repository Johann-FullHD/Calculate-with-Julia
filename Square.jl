# Define a function to calculate the area of a square
function calculate_area(side)
    return side^2
end

# Get the side length from the user
while true
    try
        println("Enter the side length of the square:")
        side = parse(Float64, readline(stdin))
        if side <= 0
            println("Error: Side length must be a positive number.")
            continue
        end
        break
    catch
        println("Error: Invalid input. Please enter a valid number.")
    end
end

# Print the area of the square
println("The area of the square is: ", calculate_area(side))
