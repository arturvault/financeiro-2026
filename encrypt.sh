#!/bin/bash
# Encrypt dashboard.html (plaintext source) into index.html (encrypted, deployable)
# Usage: ./encrypt.sh "<senha>"

set -e

if [ -z "$1" ]; then
  echo "Uso: ./encrypt.sh \"<senha>\""
  exit 1
fi

PASSWORD="$1"
SOURCE="dashboard.html"
OUTPUT="index.html"

if [ ! -f "$SOURCE" ]; then
  echo "Erro: $SOURCE não encontrado"
  exit 1
fi

# StaticRypt criptografa o HTML com AES-256
npx -y staticrypt "$SOURCE" --short -p "$PASSWORD" -d ./encrypted

# Move o arquivo criptografado pro root como index.html
mv ./encrypted/"$SOURCE" "./$OUTPUT"
rm -rf ./encrypted

echo "✓ $OUTPUT gerado (criptografado)"
