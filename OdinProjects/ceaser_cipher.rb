def caesar_cipher(message, shift)
  encrypted_message = message.chars.map do |char|
    if char.match(/[a-zA-Z]/)  
      base = char.match(/[a-z]/) ? 'a'.ord : 'A'.ord  
      shifted_char = ((char.ord - base + shift) % 26 + base).chr
      shifted_char
    else
      char
    end
  end
  encrypted_message.join
end

print "Hey! Enter the secret message you want to encrypt: " 
secret_message = gets.chomp

print "And the key you want to shift by: "
message_shift = gets.chomp

puts ceaser_cipher(secret_message, message_shift)
