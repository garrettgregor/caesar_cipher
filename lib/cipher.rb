class Cipher
  UPPER_CHARS = ("A".."Z").to_a
  LOWER_CHARS = ("a".."z").to_a

  def caesar_cipher(string, shift_input)
    string.chars.map do |char|
      if UPPER_CHARS.include?(char)
        start_index = UPPER_CHARS.index(char)
        end_index = start_index + shift_input
        end_index > UPPER_CHARS.length ?
          end_index = end_index - UPPER_CHARS.length : end_index
        UPPER_CHARS[end_index]
      elsif LOWER_CHARS.include?(char)
        start_index = LOWER_CHARS.index(char)
        end_index = start_index + shift_input
        end_index > LOWER_CHARS.length ?
          end_index = end_index - LOWER_CHARS.length : end_index
        LOWER_CHARS[end_index]
      else
        char
      end
    end.join
  end
end
