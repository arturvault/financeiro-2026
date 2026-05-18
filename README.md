# Financeiro 2026

Dashboard pessoal de análise financeira mensal — conteúdo criptografado client-side via [StaticRypt](https://github.com/robinmoisson/staticrypt).

A página HTML é AES-256 protegida por senha. Sem a senha, nada é legível.

## Atualizar

```bash
# 1. Editar dashboard.html (plaintext, gitignored)
# 2. Re-criptografar
./encrypt.sh "<senha>"

# 3. Push
git add index.html .staticrypt.json
git commit -m "Update: <mês>"
git push
```

GitHub Pages re-deploya automaticamente.
