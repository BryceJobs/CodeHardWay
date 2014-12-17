def get_digits(text)
    "REPLACE THIS CODE WITH YOUR getDigits() METHOD"
    text.reverse!
    num = Integer(text)
    n = text.length
    pat = []
    int = 0..9
    for i in 1..n
        rem = num % 10
    	num /= 10
        if int.include?(rem)    
        pat.push(rem)
        end
    end
    return pat
end

puts get_digits "51"