# FT_BORNTOSEC

## Flag
```
f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188
```

## Discovery
On the page http://{IP_ADDRESS}/index.php?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c

In elements inspector, find long comments
At the end, see 
```
You must cumming from : "https://www.nsa.gov/" to go to the next step
...
Let's use this browser : "ft_bornToSec". It will help you a lot.
```

Curl man
```
-A : Specify the User-Agent
-e : Sends the "Referer Page" information to the HTTP server
```

curl \
-A "ft_bornToSec" \
-e "https://www.nsa.gov/" \
http://10.11.200.193/index.php?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c

---

[RETURN](https://github.com/tillderoquefeuil/darkly)