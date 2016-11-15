#Short/Legible FizzBuzz

a=1;b="Fizz";c="Buzz";200.times{p(a%15<1?b+c:(a%3<1?b:(a%5<1?c:a)));a+=1}

#Shorter/Substringing FizzBuzz

1.upto(200){|i|p"FizzBuzz#{i}"[i%3<1?0:i%5<1?4:8,i%15<1?8:4]}


#Randomizer that outputs a slot machine net output (currently set to 50 repetitions)

a = 0
n = 50
n.times do	
	2 == rand(5) ? (a-=2) : (5 == rand(16) ? (a-=5) : (11 == rand(101) ? (a-=11) : a))
	a +=1
end
puts ''
puts ((1-a)/n)-1

#Long/prettier FizzBuzz

a=1
b='Fizz'
c='Buzz'
200.times do
	if a%15<1
		puts b+c
	elsif a%3<1
		puts b
	elsif a%5<1
		puts c
	else
		puts a
	end
	a+=1
end
