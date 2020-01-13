# DATA_VALIDATION_HIDDEN_FIELD

## Flag
```
1D4855F7337C0C14B6F44946872C4EB33853F40B2D54393FBE94F49F1E19BBB0
```

## Discovery
On the page http://{IP_ADDRESS}/?page=recover

Inspect the submit form
There is the webmaster email here
```
<input type="hidden" name="mail" value="webmaster@borntosec.com" maxlength="15">
```


## Use
> \[Hidden fields use] exposes the inner workings of your application, and exposes data to trivial tampering, replay, and validation attacks

## Prevention
> Data sent to the user must be validated on the server once the last page has been received

## Documentation
- [owasp - data validation - hidden fields](https://www.owasp.org/index.php/Data_Validation#Hidden_fields)

---

[RETURN](https://github.com/tillderoquefeuil/darkly)