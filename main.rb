def caesar_cipher(string,shift)
    result = ""
    for i in 0..string.length-1
      if(/[a-zA-Z]/.match(string[i]))
        if(string[i]==string[i].upcase)
          result += ((string[i].ord + shift-65)%26 + 65).chr
        else
          result += ((string[i].ord + shift-97)%26 + 97).chr
        end
      else
        result+=string[i]
      end
    end
    p result
  end
  
  caesar_cipher("What a string!", 5)