Simple Parser for C
===================
A parser is one of the components in an interpreter or compiler, which checks for correct syntax and builds a data structure (often some kind of parse tree, abstract syntax tree or other hierarchical structure) implicit in the input tokens. The parser often uses a separate lexical analyzer to create tokens from the sequence of input characters. Parsers may be programmed by hand or may be (semi-)automatically generated (in some programming languages) by a tool (such as Yacc).

#Install
1. Linux Machine is required
2. Lex and Yacc Packages have to be installed
3. Now navigate to the folder containing the program.
4. Execute `lex parser.l`
5. Execute `yacc -d parser.y`
6. Link the generated intermediate files and compile them `gcc lex.yy.c y.tab.c -ll -o parser`
7. Run the program `./parser`
8. Give the input of a test file `test.c` and get the corresponding output

#License
The Source code can be downloaded and experimented and **must not be published or utilized anywhre** without my consent.
