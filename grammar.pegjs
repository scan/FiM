start = EOL* c:class { return c; }

class
  = "Dear Princess Celestia: "i name:identifier EOL
    precode:block
    main:main
    "Your Faithful Student, Twilight Sparkle."i .*
    { return { classname: name, code: precode, main: main }; }

block = lines:line* { return lines.filter(function(e) { return !e.empty; }); }

line =
    "I "i ("said"i / "sang"i / "wrote"i) " \"" s:[^"]* "\"" EOL { return { print: s.join('') + "\n" }; }
    / EOL { return {empty: true}; }

main = "Today I learned "i [^\n\r]* EOL b:block { return b; }

identifier = w1:word w2:((" " w:word {return ' ' + w} )*) { return w1 + w2.join(''); }

word = s:[A-Z] r:[a-z]* { return s + r.join(''); }

EOL
  = "\r\n" / "\n" / "\r"
