
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digits (maybe an array)
# Output: total that is multiple of 10
# Steps:
#raise ArgumentError if less than 16 digits
#starting from the last number, double every digit until you reach the first digit
#sum all digits (if digit is bigger than single-digit, split then add)
#check to see final total is multiple of 10 (aka divisible by 10)
#If all true, then we have a valid card.  If failed, card is not valid.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#    def initialize(credit_card_number)

#        @credit_card_number = credit_card_number.to_s.split('')
#        @credit_card_number = @credit_card_number.reverse!
       
#        if credit_card_number.to_s.size != 16
#            raise ArgumentError.new('Not enough digits') 
#         end
#    end

#    def check_card
#        @credit_card_number.map! do |num|
#            if @credit_card_number.index(num).odd?
#               new_num  = num.to_i * 2
#                if new_num.size > 1
#                    new_num.to_s.split('').map! {|digit| digit.to_i}
#                end
#            else
#            num.to_i
#            end
#        end
#       sum = @credit_card_number.flatten.inject(:+)
#        if sum % 10 == 0
#            return true
#        else
#            return false
#        end

#    end

# end


# Refactored Solution
class CreditCard
   def initialize(credit_card_number)
		@credit_card_number = credit_card_number.to_s.split('').reverse!
        raise ArgumentError.new('Not enough digits') if @credit_card_number.size != 16
    end

   def check_card
       @credit_card_number.map! do |num|
           if @credit_card_number.index(num).odd?
              new_num  = num.to_i * 2
               if new_num.size > 1
                   new_num.to_s.split('').map! {|digit| digit.to_i}
               end
            else
           		num.to_i
           end
       end
       @credit_card_number.flatten.inject(:+) % 10 == 0
      end
    end

# What was the most difficult part of this challenge for you and your pair?
# The most difficult part was split the double digits but with the help of ruby docs we nailed it.

# What new methods did you find to help you when you refactored?
# we didn't use any method when refactoring, we tried to the codes in less line.

# What concepts or learnings were you able to solidify in this challenge?
# I was able to solidiy the condept of substrings.

