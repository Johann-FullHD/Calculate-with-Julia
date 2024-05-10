# Define a function to calculate the surface area of a cone
function cone_surface_area(radius, height)
    slant_height = sqrt(height^2 + radius^2)
    return pi * radius * (radius + slant_height)
end

# Define a function to calculate the volume of a cone
function cone_volume(radius, height)
    return (1/3) * pi * radius^2 * height
end

# Define a function to print the surface area and volume of a cone
function print_cone_properties(radius, height)
    surface_area = cone_surface_area(radius, height)
    volume = cone_volume(radius, height)
    println("Cone Properties:")
    println("Radius: $radius")
    println("Height: $height")
    println("Surface Area: $surface_area")
    println("Volume: $volume")
end

# Get the radius and height from the user
while true
    try
        println("Enter the radius of the cone:")
        radius = parse(Float64, readline(stdin))

        if radius <= 0
            println("Error: Radius must be a positive number.")
            continue
        end

        println("Enter the height of the cone:")
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

# Print the surface area and volume of the cone
print_cone_properties(radius, height)