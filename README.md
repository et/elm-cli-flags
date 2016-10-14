# Usage

```
$ make run ARGS="--verbose --num-threads=3 -h
=> ["Positional flag","Positional flag","Boolean flag","Argument flag","Short flag"]
```

This parses each command line word into their interpreted meaning as
a CLI option.

i.e.

```
["/usr/local/Cellar/node/6.3.1/bin/node", # Positional flag
 "/Users/et/foo/index.js",                # Positional flag
 "--verbose",                             # Boolean flag
 "--num-threads=3",                       # Argument flag
 "-h"]                                    # Short flag
```
