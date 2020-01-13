# XSS COMMENT

## Flag
```
B9E775A0291FED784A2D9680FCFAD7EDD6B8CDF87648DA647AAF4BBA288BCAB3
```

## Discovery
On the page http://{IP_ADDRESS}/index.php?page=feedback

Enter *script* in the name input

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

---

[RETURN](https://github.com/tillderoquefeuil/darkly)