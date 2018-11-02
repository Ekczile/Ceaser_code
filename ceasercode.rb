def tossed_salad(strings_to_be_encoded)
# array of letters
letters = ("a".."z").to_a
# make variable that adds letters as key then make letter rotated by 5 the value
encrypt = letters.zip(letters.rotate(5)).to_h
# merge new keys and value after the rotate so they stay at normal index's
encrypt.merge!(" " => " "); encrypt.merge!("," => ","); encrypt.merge!("?" => "?"); encrypt.merge!("!" => "!"); encrypt.merge!("\"" => "\""); encrypt.merge!("." => "."); encrypt.merge!("-" => "-");
# conditional for if any of keys of the array match any of my characters in strings_to_be_encoded if they dont match put didn't work
    if (encrypt.keys & strings_to_be_encoded.split("")).empty?
        p "didn't work"
    else
        # when they do match output encrypted code
        p strings_to_be_encoded.chars.map { |v| encrypt.fetch(v) }.join
        return strings_to_be_encoded.chars.map { |v| encrypt.fetch(v) }.join
    end
end

def untossed_salad(strings_to_be_encoded)
    letters = ("a".."z").to_a
    encrypt = letters.zip(letters.rotate(-5)).to_h
    encrypt.merge!(" " => " "); encrypt.merge!("," => ","); encrypt.merge!("?" => "?"); encrypt.merge!("!" => "!"); encrypt.merge!("\"" => "\""); encrypt.merge!("." => "."); encrypt.merge!("-" => "-");
        if (encrypt.keys & strings_to_be_encoded.split("")).empty?
        p "didn't work"
     else
        p strings_to_be_encoded.chars.map { |v| encrypt.fetch(v) }.join
        return strings_to_be_encoded.chars.map { |v| encrypt.fetch(v) }.join
    end
end