# 1.
# Write a regex that matches an uppercase K. Test it with these strings:

text1 = %w(Kx BlacK kelly)

# There should be two matches.

p text1.select { |word| word.match(/K/) } == %w(Kx BlacK)

#------------------------------------------------------------------------------

# 2.
# Write a regex that matches an uppercase or lowercase H. Test it with these strings:

text2 = %w(Henry perch golf)

# There should be two matches.

p text2.select { |word| word.match(/(h|H)/) } == %w(Henry perch)
p text2.select { |word| word.match(/h/i) } == %w(Henry perch)


#------------------------------------------------------------------------------

# 3.
# Write a regex that matches the string dragon. Test it with these strings:

text3 = ["snapdragon", "bearded dragon", "dragoon"]

# There should be two matches.

p text3.select { |drag_type| drag_type.match(/dragon/) } == ["snapdragon", "bearded dragon"]

#------------------------------------------------------------------------------

# 4.
# Write a regex that matches any of the following fruits: banana, orange, apple, strawberry. The fruits may appear in other words. Test it with these strings:

text4 = %w(banana orange pineapples strawberry raspberry grappler)

# There should be five matches.

p text4.select { |fruit| fruit.match(/(banana|orange|apple|strawberry)/) } == %w(banana orange pineapples strawberry grappler)

#------------------------------------------------------------------------------

# 5.
# Write a regex that matches a comma or space. Test your regex with these strings:

text5 = ["This line has spaces", "This,line,has,commas,", "No-spaces-or-commas"]

# There should be seven matches.

p text5.select { |sentence| sentence.match(/(,| )/) } == ["This line has spaces", "This,line,has,commas,"]

#------------------------------------------------------------------------------

# 6.Challenge: Write a regex that matches blueberry or blackberry, but write berry precisely once. Test it with these strings:

text6 = ["blueberry", "blackberry", "black berry", "strawberry"]

# There should be two matches.

# Hint: you need both concatenation and alternation.

p text6.select { |fruit| fruit.match(/(blue|black)berry/) } == %w(blueberry blackberry)