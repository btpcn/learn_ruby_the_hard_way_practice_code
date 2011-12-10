my_name = 'Zed A. Shaw'
my_age = 35 # not a Lie
my_height = 74.0 # inches
my_weight = 180.0 # lbs
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Brown'

puts "Let's talk about %s." % my_name
puts "He's %f inches tall. That is %f centimeters" % [my_height, my_height * 2.54]
puts "He's %f pounds heavy. That is %f kilograms" % [my_weight, my_weight * 0.4536]
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]
puts "His teeth are usually %s depending on the coffee." % my_teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [my_age, my_height, my_weight, my_age + my_height + my_weight]