# HTPASSWD

## The flag

```
THE FLAG IS : d19b4823e0d5600ceed56d5e896ef328d7a2b9e7ac7e80f4fcdb9b10bcb3e7ff
```

## How to find it ?

On the page http://{IP_ADDRESS}/robots.txt

Then go to : http://{IP_ADDRESS}/whatever/
-> http://{IP_ADDRESS}/whatever/htpasswd

-> root:8621ffdbc5698829397d97767ac13db3

MD5 : 8621ffdbc5698829397d97767ac13db3
-> dragon

Finlly http://{IP_ADDRESS}/admin

## How to use it ?

The robots.txt file is a simple text file placed on your web server which tells webcrawlers if they should access a file or not.

## How to avoid it ?

Use htaccess to block htpasswd access