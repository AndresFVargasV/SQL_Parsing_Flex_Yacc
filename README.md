# SQL Parsing with Flex and Yacc

## Overview
This repository demonstrates the use of Flex and Yacc for parsing SQL queries. It includes example lexer and parser files, along with a sample input and output to show the parsing process.

## Contents
- `LAB01.l`: Flex configuration for lexical analysis.
- `LAB02.y`: Yacc configuration for parsing.
- `entrada.txt`: Example input SQL query.
- `salida.txt`: Output from the parser.
- `lex.yy.c`, `y.tab.c`, `y.tab.h`: Generated C files from Flex and Yacc.

## Getting Started
To run the parser:
1. Ensure you have Flex and Bison installed.
2. Run `flex LAB01.l` to generate `lex.yy.c`.
3. Run `bison -dy LAB02.y` to generate `y.tab.c` and `y.tab.h`.
4. Compile the generated code and run with the input file.

## Contributing
Contributions to extend the functionality or improve the parser are welcome. Please fork the repository and submit a pull request.

## License
This project is available under the MIT License. See the LICENSE file for more details.
