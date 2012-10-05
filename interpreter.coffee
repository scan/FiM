window.FiM =
    interprete: (str, options = {}) ->
        stdout = options.stdout || console.log
        stderr = options.stderr || console.log
        stdin = options.stdin || window.prompt

        do ->
        #try
            r = parser.parse str
            console.log "Executing..."

            for e in r.main
                if e.print? then stdout e.print
        #catch e
        #    stderr e
