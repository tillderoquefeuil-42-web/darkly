# ROBOTS HTPASSWD

## Flag
```
d19b4823e0d5600ceed56d5e896ef328d7a2b9e7ac7e80f4fcdb9b10bcb3e7ff
```

## Discovery
On the page http://{IP_ADDRESS}/robots.txt

Then go to : http://{IP_ADDRESS}/whatever/ \
-> http://{IP_ADDRESS}/whatever/htpasswd \
-> root:8621ffdbc5698829397d97767ac13db3

```diff
md5_decrypt('8621ffdbc5698829397d97767ac13db3')
> dragon
```

Finaly http://{IP_ADDRESS}/admin and enter *root:dragon*

## Use
> \[...] the robots.txt file’s disallow list can serve as a map.

## Prevention
> Disallow directories (not specific pages) \[and] 
> be sure to include an index page, a redirect, or a 404 
> at the directory index level to ensure your files aren’t incidentally exposed via an “index of” page. 

## Documentation
- [owasp - Review WebserverMetafiles for Information Leakage](https://www.owasp.org/index.php/Review_Webserver_Metafiles_for_Information_Leakage_(OTG-INFO-003))
- [searchenginejournal - robots.txt security risks](https://www.searchenginejournal.com/robots-txt-security-risks/289719)
- [md5](https://md5decrypt.net/en/)

---

[RETURN](https://github.com/tillderoquefeuil/darkly)