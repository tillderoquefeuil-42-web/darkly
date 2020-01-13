# HIDDEN ROBOTS

## Flag
```
99dde1d35d1fdd283924d84e6d9f1d820
```

## Discovery
On the page http://{IP_ADDRESS}/robots.txt \
Then go to http://{IP_ADDRESS}/.hidden \
With a script, open all README in order to find the good one

## Use
> \[...] the robots.txt file’s disallow list can serve as a map.

## Prevention
> Disallow directories (not specific pages) \[and] 
> be sure to include an index page, a redirect, or a 404 
> at the directory index level to ensure your files aren’t incidentally exposed via an “index of” page. 

## Documentation
- [owasp - Review WebserverMetafiles for Information Leakage](https://www.owasp.org/index.php/Review_Webserver_Metafiles_for_Information_Leakage_(OTG-INFO-003))
- [searchenginejournal - robots.txt security risks](https://www.searchenginejournal.com/robots-txt-security-risks/289719)

---

[RETURN](https://github.com/tillderoquefeuil/darkly)