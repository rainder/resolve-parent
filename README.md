# resolve-parent

Resolves closest file/directory in a CWD tree

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

possible to resolve a file in a subdirectory

```coffeescript
resolveParent = require('resolve-parent')

path = resolveParent('some/dir/package.json')
# /what/../ever/src/lib/index.coffee 
# will find package.json file in
# /what/../ever/some/dir/package.json
```


specify base directory to search from

```coffeescript
resolveParent = require('resolve-parent')

path = resolveParent('z/package.json', '/var/www/a/b/c/d')
# /what/../ever/src/lib/index.coffee 
# will find package.json file in
# /var/www/z/package.json
```
