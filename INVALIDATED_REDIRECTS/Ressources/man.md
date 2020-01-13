# INVALIDATED_REDIRECTS

## Flag
```
B9E775A0291FED784A2D9680FCFAD7EDD6B8CDF87648DA647AAF4BBA288BCAB3
```

## Discovery
On the page http://{IP_ADDRESS}/

Inspect the social networks icons
Change *site=__facebook__* and click on the icon
```diff
# element inspector
<a href="index.php?page=redirect&amp;site=test" class="icon fa-facebook"></a>
```

## Use
> \[...] modifying untrusted URL input to a malicious site, an attacker may successfully launch a phishing scam and steal user credentials.
> \[...] Unvalidated redirect and forward attacks can also be used to maliciously craft a URL 
> that would pass the application's access control check and then forward the attacker to privileged functions that they would normally not be able to access.

## Prevention
> - Simply avoid using redirects and forwards
> - do not allow the URL as user input for the destination
> - ensure that the supplied value is valid, appropriate for the application, and is authorized for the user
> - Sanitize input by creating a list of trusted URLs (lists of hosts or a regex)
> - Force all redirects to first go through a page notifying users that they are going off of your site, with the destination clearly displayed, and have them click a link to confirm.

## Documentation
- [owasp - Unvalidated Redirects](https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html)

---

[RETURN](https://github.com/tillderoquefeuil/darkly)