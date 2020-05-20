# Scheme Interpreter
An interpreter for Scheme (Lisp) written in Python. Implemented REPL and evaluator for common Scheme expressions using class-based models. 

## Error Handling
This interpreter is an elaboration to the general Scheme interpreter since it has a more extensive set of error handlers. This project focuses more on rectifying SchemeErrors for recursion limitations (which can be changed by importing the `sys` module and then setting the recursion limit using the `sys.setrecursionlimit()` method; not recommended), null tokens, invalid user-defined procedures and errors.

## How to Run
You can run the interpreter in your own CLI/terminal by executing the Python file using

```bash
python3 scheme.py
```

## Web-based Client
Coming soon! :)