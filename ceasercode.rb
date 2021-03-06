def tossed_salad(strings_to_be_encoded, rotate)
    rotate = rotate.to_i
    if rotate == 26 || rotate == 0
        rotate = 5
    end
# array of letters`123rf
# time = Time.new
letters = ("a".."z").to_a
upletters = ("A".."Z").to_a
numbers = ("0".."9").to_a
# make variable that adds letters as key then make letter rotated by 5 the value
encrypt = letters.zip(letters.rotate(rotate)).to_h.merge!(upletters.zip(upletters.rotate(rotate)).to_h).merge!(numbers.zip(numbers.rotate(rotate)).to_h)
# merge new keys and value after the rotate so they stay at normal index's
encrypt.merge!(" " => " "); encrypt.merge!("," => ","); encrypt.merge!("?" => "?"); encrypt.merge!("!" => "!"); encrypt.merge!("\"" => "\""); encrypt.merge!("." => "."); encrypt.merge!("-" => "-");
# conditional for if any of keys of the array match any of my characters in strings_to_be_encoded if they dont match put didn't work
p (encrypt.keys & strings_to_be_encoded.split(""))
    if (encrypt.keys & strings_to_be_encoded.split("")).empty? || 
        p "Please, use grammatical characters only"
    else
        # when they do match output encrypted code
        p strings_to_be_encoded.chars.map { |v| encrypt.fetch(v) }.join
        return strings_to_be_encoded.chars.map { |v| encrypt.fetch(v) }.join
    end
end

def untossed_salad(strings_to_be_encoded, rotate)
    rotate = rotate.to_i
    if rotate == -26 || rotate == 0
        rotate = -5
    end
    # time1 = Time.new
    letters = ("a".."z").to_a
    upletters = ("A".."Z").to_a
    numbers = ("0".."9").to_a
    encrypt = letters.zip(letters.rotate(rotate)).to_h.merge!(upletters.zip(upletters.rotate(rotate)).to_h).merge!(numbers.zip(numbers.rotate(rotate)).to_h)
    encrypt.merge!(" " => " "); encrypt.merge!("," => ","); encrypt.merge!("?" => "?"); encrypt.merge!("!" => "!"); encrypt.merge!("\"" => "\""); encrypt.merge!("." => "."); encrypt.merge!("-" => "-");
        if (encrypt.keys & strings_to_be_encoded.split("")).empty?
        p "Please, use grammatical characters only"
     else
        p strings_to_be_encoded.chars.map { |v| encrypt.fetch(v) }.join
        return strings_to_be_encoded.chars.map { |v| encrypt.fetch(v) }.join
    end
end