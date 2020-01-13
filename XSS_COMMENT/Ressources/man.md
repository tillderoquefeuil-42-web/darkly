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

---

[RETURN](https://github.com/tillderoquefeuil/darkly)