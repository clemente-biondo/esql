//each user has boolean, values and lists
//parameters from the request
grammar esql;
/*
 * Parser Rules
 */
message             : (WORD | STRING_LITERAL)+ ;
 
 

/*
 * Lexer Rules
 */
STRING_LITERAL               : UNTERMINATED_STRING_LITERAL '\'' ;
UNTERMINATED_STRING_LITERAL  : '\'' (~['\\\r\n] | '\\' (. | EOF))* ;
CONDITIONAL_PLACEHOLDER      : :\?[a-zA-Z_]+
PLACEHOLDER                  : :[a-zA-Z_]+
WORD                         : [a-zA-Z0-9*,./<>=()]+ ; 
WS                           : [ \t\r\n]+ -> skip       ;
COMMENT                      : '/*' .*? '*/' -> skip    ;
LINE_COMMENT                 : '//' ~[\r\n]* -> skip    ;