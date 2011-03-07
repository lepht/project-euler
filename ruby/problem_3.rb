class Integer
    def prime?
        if self == 1
            return false
        else
            (2...self).reverse_each { |n|
                return false if self % n == 0
            }
            return true
        end
    end

    def factor?(divisor)
        return self % divisor == 0
    end

    def largest_prime_factor
        (2...Math.sqrt(self)).reverse_each { |n|
            if self.factor? n && n.prime?
                return n
            end
        }
    end
end

puts 600851475143.largest_prime_factor
