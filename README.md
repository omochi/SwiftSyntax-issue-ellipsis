# SwiftSyntax-issue-ellipsis

Run `$ swift run`

You will get:

```
ccc: Int, 
---ellipsis---
TokenSyntax
, 
---
no trailing comma
```

It should be:

```
ccc: Int, 
---ellipsis---
no ellipsis
---
TokenSyntax
,
```
