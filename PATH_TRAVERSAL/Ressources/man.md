# PATH TRAVERSAL


## Flag
```
b12c4b2cb8094750ae121a676269aa9e2872d07c06e429d25a63196ec1c8c1d0
```

## Discovery
On the page http://{IP_ADDRESS}/?page=signin

"?page=signin" is a open gate to the server \
As it runs on UNIX, search the "/etc/passwd" file \
replace "signin" by ".." untill you reach root and then add "/etc/passwd" \
here : http://{IP_ADDRESS}/?page=../../../../../../../etc/passwd

## Use
> access arbitrary files and directories stored on file system including \
> application source code or configuration and critical system files

## Prevention
> Prefer working without user input when using file system calls
> Use indexes rather than actual portions of file names when templating or using language files
> Ensure the user cannot supply all parts of the path
> Validate the user’s input by only accepting known good
> Use chrooted jails and code access policies to restrict where the files can be obtained or saved to

## Documentation
- [owasp - path traversal](https://www.owasp.org/index.php/Path_Traversal)
- [owasp - prevent path traversal](https://www.owasp.org/index.php/File_System#Path_traversal)

---

[RETURN](https://github.com/tillderoquefeuil/darkly)