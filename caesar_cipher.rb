def caesar_cipher (string, factor = 5)
  p "#️⃣ ** Warning: Factor should be less than 25 **"
  encrypted_array = string.split('').map do |letter|
    if letter.ord.between?(65, 90) || letter.ord.between?(97, 122)
      if (letter.ord + factor > 90 && letter.ord < 97) || (letter.ord + factor > 127)
        (letter.ord + factor - 26).chr
      else
        (letter.ord + factor).chr
      end
    else
      letter.ord.chr
    end
  end
  encrypted_array.join('')
end

p caesar_cipher("What a string!") # "Bmfy f xywnsl!"
