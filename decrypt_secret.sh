#!/bin/sh

# Decrypt the file
# --batch to prevent interactive command
# --yes to assume "yes" for questions
echo "Decrypting $FILE to ${FILE%.*}..."
gpg --batch --yes --decrypt --passphrase="$GPG_PASSPHRASE" --output "${FILE%.*}" "$FILE"
