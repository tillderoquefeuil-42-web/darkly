# DATA_VALIDATION_SELECT

## Flag
```
03A944B434D5BAFF05F46C4BEDE5792551A2595574BCAFC9A6E25F67C382CCAA
```

## Discovery
On the page http://{IP_ADDRESS}/index.php?page=survey

Inspect any grade input \
Change *value="__10__"* and select it
```diff
# element inspector
<option value="9999999">10</option>
```

## Use
> This weakness leads to almost all of the major vulnerabilities in applications, 
> such as Interpreter Injection, locale/Unicode attacks, file system attacks and buffer overflows. 
> Data from the client should never be trusted for the client has every possibility to tamper with the data.

## Prevention
> Data validation strategies (Accept known good, Reject known bad, Sanitize)

## Documentation
- [owasp - data validation - business rule validation](https://www.owasp.org/index.php/Data_Validation#Where_to_include_business_rule_validation)
- [owasp - data validation - select tampering](https://www.owasp.org/index.php/Data_Validation#Selects.2C_radio_buttons.2C_and_checkboxes)

---

[RETURN](https://github.com/tillderoquefeuil/darkly)