```coffeescript
resolveParent = require('resolve-parent')

path = resolveParent('package.json')
```
will resolve closest package.json file in a CWD tree
