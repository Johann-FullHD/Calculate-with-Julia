# clock.jl

using Dates

function clock()
    println("Press Ctrl+C to quit.")
    while true
        try
            now_time = now()
            println(now_time)
            sleep(1)
        catch e
            if isa(e, InterruptException)
                println("Goodbye!")
                break
            else
                rethrow(e)
            end
        end
    end
end

clock()