function quadratic_roots(a::Float64, b::Float64, c::Float64)
    discriminant = b^2 - 4ac
    
    if discriminant > 0
        root1 = (-b + sqrt(discriminant)) / (2a)
        root2 = (-b - sqrt(discriminant)) / (2a)
        return root1, root2
    elseif discriminant == 0
        root = -b / (2a)
        return root, root
    else
        real_part = -b / (2a)
        imaginary_part = sqrt(-discriminant) / (2a
