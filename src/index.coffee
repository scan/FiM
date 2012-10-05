PEG = require 'pegjs'
fs = require 'fs'

parser = PEG.buildParser (fs.readFileSync "#{__dirname}/../lib/grammar.pegjs") + ''

console.log parser.parse 'a\n\tb'
