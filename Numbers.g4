grammar Numbers;

/*
// Descomente para gerar codigo em c#
options {
    language=CSharp;
}
*/

number: BINARY; // precisa ao menos uma regra de gramática
                 // ignorar isso por hora

NEWLINE : [\r\n ]+;

BINARY : BIN_DIGIT+ 'b' ; // Sequencia de digitos seguida de b  10100b

BIN_DIGIT : [01];

HEXADECIMAL : HEX_INTRO HEX_DIGIT+;

INT_DIGIT : INT_NUMBER;

INT_NUMBER : (DIGIT+ | NEGATIVO DIGIT+);

REAL_DIGIT : INT_NUMBER+ REAL_NUMBER;

REAL_NUMBER : '.' DIGIT+ EXPOENTE?;

HEX_INTRO : '0x';

DIGIT : ('0'..'9');

HEX_DIGIT : ('0'..'9'|'a'..'f'|'A'..'F');

NEGATIVO : '-';

EXPOENTE: 'e' | 'E' | 'E-10' | 'e-10' | 'E+10' | 'e+10' | 'E10' | 'e10';
