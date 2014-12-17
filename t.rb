def calculate_tax(inc)
    # REPLACE THIS CODE WITH YOUR calculate_tax() METHOD
    case inc.to_i
        when 0..10000
         
          taxe =  0
        when 10001..20000
        	
            taxe = (inc.to_i - 10000) * 0.1
        when 20001..40000
        	
            taxe = 1000 + (inc.to_i - 20000) * 0.2
        else
        	
            taxe = 5000 + (inc.to_i - 40000) * 0.3
    end
    return taxe
end

def income_list(text)
    # REPLACE THIS CODE WITH YOUR income_list() METHOD
    list = text.split(',')
    taxes = []
    list.each do |inc|
        taxes.push(calculate_tax inc)
    end
    return taxes
end

puts income_list "65000,5000,15000,25000,41000"
