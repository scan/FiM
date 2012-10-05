fs = require 'fs'
PEG = require 'pegjs'
coffee = require 'coffee-script'

sources = "#{__dirname}/src/index.coffee"
grammar = "#{__dirname}/grammar.pegjs"

task 'build', ->
    parser = PEG.buildParser (fs.readFileSync grammar) + '', trackLineAndColumn: yes

    src = coffee.compile (fs.readFileSync sources).toString(), bare: yes
    res = """
(function(){
parser = #{parser.toSource()};

#{src}
}).call(this);
    """

    fs.writeFile 'fim.js', res
    try
        {parser,uglify} = require 'uglify-js'
        res = uglify.gen_code uglify.ast_squeeze uglify.ast_mangle parser.parse res
        fs.writeFile 'fim.min.js', res
