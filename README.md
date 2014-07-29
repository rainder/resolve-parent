# resolve-parent

Resolves closest package.json file in a CWD tree

#### Instalation

```bash
npm install resolve-parent
```
#### Usage

```coffeescript
resolveParent = require('resolve-parent')

path = resolveParent('package.json')
# /what/../ever/src/lib/index.coffee 
# will find package.json file in
# /what/../ever/package.json
```
