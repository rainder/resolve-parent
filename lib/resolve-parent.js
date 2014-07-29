/**
 * Created by endriu on 29/07/14.
 */

/**
 *
 * @type {exports}
 */
var path = require('path'),
  fs = require('fs');

/**
 *
 * @type {resolveParent}
 */
exports = module.exports = resolveParent;


/**
 *
 * @param target
 */
function resolveParent(target) {
  var dir = process.cwd();

  return (function next() {
    var fullPath = path.resolve(dir, target),
      exists = fs.existsSync(fullPath);

    if (exists) {
      return fullPath;
    } else {
      if (dir.length > 1) {
        dir = path.resolve(dir, '..')
        return next();
      } else {
        return undefined;
      }
    }

  })();
}