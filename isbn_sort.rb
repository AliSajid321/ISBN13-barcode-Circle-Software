def isbnSort number
    arr= number.digits.reverse;
    x=0;
    sum = 0;
    for i in arr do
        if x==0 || x.even?
            i= i*1;
        elsif x.odd?
            i= i*3;
        end
        sum += i;
        x += 1;
    end
    return arr.push(10 - (sum % 10)).join.to_i;
end

puts "Enter ISBN Number:"
isbn = gets
new_isbn=isbnSort(isbn.to_i);
puts new_isbn