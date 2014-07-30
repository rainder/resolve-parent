chai = require 'chai'
resolveParent = require 'resolve-parent'
expect = chai.expect

path = require 'path'

process.chdir(__dirname);

describe 'Resolve Parent Module', ->

  it 'should return undefined', ->
    expect(resolveParent('package.json2')).to.be.an 'undefined'

  it 'should return a string', ->
    expect(resolveParent('package.json')).to.be.a 'string'

  it 'should find the path', ->
    expect(resolveParent('package.json')).to.be.equal path.resolve(__dirname, '../package.json')
    expect(resolveParent('resolve-parent')).to.be.equal path.resolve(__dirname, '..')
    expect(resolveParent('resolve-parent/package.json')).to.be.equal path.resolve(__dirname, '../package.json')
    expect(resolveParent('var', '/var/log')).to.be.equal '/var'