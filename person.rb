def add_numbers(a, b)
	a + b
end


def subtract_numbers(a, b)
	return a - b
end


def add_array_numbers(a)
	sum = 0
	a.each {|i| sum += i}
	sum
end


def subtract_array_numbers(a)
	sum = a[0]
	a.each {|i| sum -= i}
	return sum
end


def add_array_numbers1(a)
	a.reduce(0, :+)
end

def multiply_numbers(a, b)
	a*b
end


def divide_numbers(a, b)
	if b > 0
		a/b
	else
		"inf"
	end
end


def multiply_array_numbers(a)
	a.reduce(1, :*)
end


def raise2power(a, b)
	a ** b
end


def factorial(a)
    (1..a).inject(:*) || 1
end


def smooth_operator(a)
	if a[:function] == 'add'
		add_array_numbers(a[:data])
	elsif a[:function] == 'subtract'
		subtract_numbers(a[:data][0], a[:data][1])
	elsif a[:function] == 'divide'
		divide_numbers(a[:data][0], a[:data][1])
	elsif a[:function] == 'multiply'
		multiply_array_numbers(a[:data])
	elsif a[:function] == 'indices'
		raise2power(a[:data][0], a[:data][1])
	elsif a[:function] == 'factorial'
		factorial(a[:data][0])
	else
		return "That function is not allowed"		
	end
end




