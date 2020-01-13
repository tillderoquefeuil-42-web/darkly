# UNRESTRICTED FILE UPLOAD

## Flag
```
46910d9ce35b385885a9f7e2b336249d622f29b267a1771fbacf52133beddba8
```

## Discovery
On the page http://{IP_ADDRESS}/index.php?page=upload

Force to upload a script by doing a curl with a script and an image type
```
curl -F "Upload=send" -F "uploaded=@script.php;type=image/jpeg" http://{IP_ADDRESS}/index.php\?page=upload
```
**This works because the file type checked in back is the one provided in request, not over the file itself**

## Use
> Supposed code can be executed in the server context or on the client side \
> Server-side attacks: The web server can be compromised by uploading and executing a web-shell which can run commands, 
> browse system files, browse local resources, attack other servers, or exploit the local vulnerabilities, and so forth.
> Client-side attacks: Uploading malicious files can make the website vulnerable 
> to client-side attacks such as XSS or Cross-site Content Hijacking.

## Prevention
There are many ways to prevent this. Check [this page](https://www.owasp.org/index.php/Unrestricted_File_Upload#Prevention_Methods_.28Solutions_to_be_more_secure.29) for a methods list 

## Documentation
- [owasp - unrestricted file upload](https://www.owasp.org/index.php/Unrestricted_File_Upload)


---

[RETURN](https://github.com/tillderoquefeuil/darkly#readme)