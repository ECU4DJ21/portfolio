#!/usr/bin/python3 
      
import hashlib 
import itertools
import string
      
#hidden password hash 
      
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824" 

def guess_password(real):
    chars = string.ascii_lowercase + string.digits
    attempts = 0
    for password_length in range(1, 9):
        for guess in itertools.product(chars, repeat=password_length):
            attempts += 1
            guess = ''.join(guess)
            if guess == real:
#hash the guess 
            guess_passwordHash = hashlib.sha256(guess.encode("utf-8")).hexdigest() 
            print(f"Trying password {guess}:{guess_passwordHash}") 
      
#if the hash is the same as the correct password's hash then we have cracked the password! 
      
if(guess_passwordHash == passwordHash): 
      
    print(f"Password has been cracked! It was {guess}")

     