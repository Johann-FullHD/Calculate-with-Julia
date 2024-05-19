function factorial(n)
    if n == 0
        return 1
    else
        return n * factorial(n - 1)
    end
end

factorials = Dict()

for i in 1:10
    factorials[i] = factorial(i)
end

function series_sum(n)
    if n > 10
        return "Error: n must be less than or equal to 10."
    else
        return sum(factorials[1:n])
    end
end

println(series_sum(5))
