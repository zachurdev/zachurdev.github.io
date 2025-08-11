# Steps to recreate this site

Prerequisites:
* GitHub Account
* Porkbun Account (Domain Registrar)
* Cloudflare (DNS Provider)
* debian (Linux distribution)
* git
* gh (CLI Tool)
* curl (for rustup install script)
* rustup (rustc + cargo)
* mdbook (via cargo)

Create the repository
```
gh repo create --public {USERNAME}.github.io
```

Verify domain via DNS:
```
https://github.com/settings/pages

TXT {CHALLENGE_NAME} {CHALLENGE_CONTENT}
```

Associate custom domain:
```
https://github.com/{USERNAME}/{USERNAME}.github.io/settings/pages
```

Set up DNS records (IPv4) for custom domain:
```
A {APEX_DOMAIN} 185.199.108.153
A {APEX_DOMAIN} 185.199.109.153
A {APEX_DOMAIN} 185.199.110.153
A {APEX_DOMAIN} 185.199.111.153
```