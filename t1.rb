#Basic units conversion tool
def temperature(n, from)
    # from = "fahrenheit" or "celsius" or "kelvin"
    # Given a temperature "n" in the units "from", determine the temperature in the other
    # two units. This method should return a simple array with these two values in the
    # simple [0], [1] order of fahrenheit, celsius, and/or kelvin -- omitting the one value
    # already supplied as "from" in the method call. The conversion equations are:
    # F = (9/5)C + 32
    # C = (*F - 32) / 1.8
    # K = [*C] + 273.15
    #REPLACE THIS CODE WITH YOUR TEMPERATURE CONVERSION METHOD
    temp = []
    f, c, k = 0.0,0.0, 0.0
    case from
        when "fahrenheit"
            c = (n - 32) / 1.8
            k = c + 273.15
            temp.push(c,k)
            return temp
        when "celsius"
            f = (9/5.0) * n + 32
            k = n + 273.15
            temp.push(f,k)
            return temp
        when "kelvin"
            c = n - 273.15
            f = (9/5.0) * c + 32
            temp.push(f,c)
            return temp
    end
   
end