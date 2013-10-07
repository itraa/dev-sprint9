class Crypto
    class << self
        def shift_message(message,shift_factor)
#            alphabet = {'A'=>1, 'B'=>2, 'C'=>3, 'D'=>4, 'E' => 5, 'F' => 6, 'G' => 7, 'H'=>8,"I"=>9,"J"=>10,"K"=>11,"L"=>12,"M"=>13,"N"=>14,"O"=>15,"P"=>16,"Q"=>17,"R"=>18,"S"=>19,"T"=>20,"U"=>21,"V"=>22,"W"=>23,"X"=>24,"Y"=>25,"Z"=>26}
            alphabet = {'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e' => 5, 'f' => 6, 'g' => 7, 'h'=>8,"i"=>9,"j"=>10,"k"=>11,"l"=>12,"m"=>13,"n"=>14,"o"=>15,"p"=>16,"q"=>17,"r"=>18,"s"=>19,"t"=>20,"u"=>21,"v"=>22,"w"=>23,"x"=>24,"y"=>25,"z"=>26}
            shifted = 0
            new_message = ""
            message.split(" ").each do |word|
                word.each_char do |letter|
                    shifted = alphabet[letter] - shift_factor
                    if shifted > 26
                        shifted = shifted - 26
                    end
                    for key in alphabet.keys
                        if alphabet[key] == shifted
                            new_message << key
                        end
                    end
                end
                new_message << " "
            end
            return new_message
        end
    end
end

message = 'htslwfyaqfyntsx ts ijhtinsl ymj xjhwjy rjxxflj'
shift_factor = 5
puts Crypto.shift_message(message, shift_factor)
