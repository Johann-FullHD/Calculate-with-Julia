# Define a function to calculate the surface area of a cylinder
function cylinder_surface_area(radius, height)
    return 2 * pi * radius * (radius + height)
end

# Define a function to calculate the volume of a cylinder
function cylinder_volume(radius, height)
    return pi * radius^2 * height
end

# Define a function to print the surface area and volume of a cylinder
function print_cylinder_properties(radius, height)
    surface_area = cylinder_surface_area(radius, height)
    volume = cylinder_volume(radius, height)
    println("Cylinder Properties:")
    println("Radius: $radius")
    println("Height: $height")
    println("Surface Area: $surface_area")
    println("Volume: $volume")
end

# Get the radius and height from the user
while true
    try
        println("Enter the radius of the cylinder:")
        radius = parse(Float64, readline(stdin))

        if radius <= 0
            println("Error: Radius must be a positive number.")
            continue
        end

        println("Enter the height of the cylinder:")
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

# Print the surface area and volume of the cylinder
print_cylinder_properties(radius, height)