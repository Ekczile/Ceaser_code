def tossed_salad(strings_to_be_encoded)
letters = ("a".."z").to_a
encrypt = letters.zip(letters.rotate(5)).to_h
strings_to_be_encoded.chars.map { |v| encrypt.fetch(v) }.join
p strings_to_be_encoded.chars.map { |v| encrypt.fetch(v) }.join
end
