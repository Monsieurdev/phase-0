# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  concat_arrays = []
  array_1.each do |x|
  	concat_arrays << x
  end
  array_2.each do |x|
  	concat_arrays << x
  end
  concat_arrays
end