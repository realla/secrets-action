# Secrets Action

Github Action to decrypt gpg encrypted secrets.

## Using in an Action

```
- id: foo
  uses: realla/secrets-action@main
  with:
    passphrase: ${{ secrets.GPG_PASSPHRASE }}
    file: path/to/secret.yml.gpg
```

## Encrypting secrets

Use:

    gpg --symmetric --cipher-algo AES256 path/to/secret.yml

And then check in the secret.yml.gpg file (not secret.yml - add that to ignore!)
