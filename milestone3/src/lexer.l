%{
    #include<bits/stdc++.h>
    #include "parser.tab.h"
    #include "symbol_table.h"
    using namespace std;
    int bracket_count=0;
    deque<int> tokenq;
    stack<int> indent_stack({0});
    extern void yyerror(string str);
    void indent_handle(string s)
    {
        int width=count(s.begin(),s.end(),' ')+2*count(s.begin(),s.end(),'\t');
        if(width%2)
        {
            yyerror("Indentation error");
        }
        int curr_offset=width/2;
        if(curr_offset>indent_stack.top())
        {
            int temp=curr_offset-indent_stack.top();
            indent_stack.push(curr_offset);
            tokenq.push_back(INDENT);
            return;
        }
        while(indent_stack.top()>curr_offset)
        {
            indent_stack.pop();
            tokenq.push_back(DEDENT);
        }
        if(indent_stack.top()!=curr_offset)
        {
            yyerror("Indentation error");
        }
    }
    string strip_str(string s)
    {
        if(s.size()>=6 && s.substr(0,3)=="\'\'\'" && s.substr(s.size()-3)=="\'\'\'")
        {
                return s.substr(3, s.size()-6);
        }
        if(s.size()>=6 && s.substr(0,3)=="\"\"\"" && s.substr(s.size()-3)=="\"\"\"")
        {
                return s.substr(3, s.size()-6);
        }
        if(s.size()>=2 && s[0]=='\'' && s.back()=='\'')
        {
                return s.substr(1, s.size()-2);
        }
        if(s.size()>=2 && s[0]=='\"' && s.back()=='\"')
        {
                return s.substr(1, s.size()-2);
        }
        return s;
    }
    string modified(string s)//removes double backslash n
    {
        string t;
        
        for(int i=0;i<s.size();i++)
        {
            if(s[i]=='\\' && i+1<s.size() && s[i+1]=='\n')
                i++;
            else if(s[i]=='\\' && i+1<s.size() && s[i+1]=='\r' && i+2<s.size() && s[i+2]=='\n')
                i+=2;
            else
                t.push_back(s[i]);
            
        }
        return strip_str(t);
    }
    string modified2(string s)//converts \n to \\n
    {
        string t;
        
        for(int i=0;i<s.size();i++)
        {
            if(s[i]=='\n')
            {
                t.push_back('\\');
                t.push_back('n');

            }
            else if( s[i]=='\r')
            {
                t.push_back('\\');
                t.push_back('r');

            }
            else
                t.push_back(s[i]);
            
        }
        return strip_str(t);
    }
//     int line_no=1;
//     void increment_line_no(string s)
//     {
//         line_no+=count(s.begin(),s.end(),'\n');
//     }

extern int node_num;
%}
%option noyywrap
%option yylineno


STRING_ESCAPE_SEQ                                                       ("\\")([^\r\n]|[\n]|([\r][\n]))

LONG_STRING_CHAR_SNGLE                                                  [^\\\']
LONG_STRING_CHAR_DOUBLE                                                  [^\\\"]
A_SINGLE                                                                "\'"{LONG_STRING_CHAR_SNGLE}
B_SINGLE                                                                "\'\'"{LONG_STRING_CHAR_SNGLE}
A_DOUBLE                                                                "\""{LONG_STRING_CHAR_DOUBLE}
B_DOUBLE                                                                "\"\""{LONG_STRING_CHAR_DOUBLE}
LONG_STRING_ITEM_SINGLE                                                 {A_SINGLE}|{B_SINGLE}|{LONG_STRING_CHAR_SNGLE}|{STRING_ESCAPE_SEQ}
LONG_STRING_ITEM_DOUBLE                                                 {A_DOUBLE}|{B_DOUBLE}|{LONG_STRING_CHAR_DOUBLE}|{STRING_ESCAPE_SEQ}
LONG_STRING                                                             ("\'\'\'"{LONG_STRING_ITEM_SINGLE}*"\'\'\'")|("\"\"\""{LONG_STRING_ITEM_DOUBLE}*"\"\"\"")


EOL                                                                     ([\n])|([\r][\n])
SHORT_STRING_CHAR_SINGLE                                                [^\\\n\'\r]
SHORT_STRING_CHAR_DOUBLE                                                [^\\\n\"\r]
SHORT_STRING_ITEM_SINGLE                                                {SHORT_STRING_CHAR_SINGLE}|{STRING_ESCAPE_SEQ}
SHORT_STRING_ITEM_DOUBLE                                                {SHORT_STRING_CHAR_DOUBLE}|{STRING_ESCAPE_SEQ}
SHORT_STRING                                                            ("\'"{SHORT_STRING_ITEM_SINGLE}*"\'")|("\""{SHORT_STRING_ITEM_DOUBLE}*"\"")
STRING_PREFIX                                                           ("r"|"u"|"R"|"U"|"f"|"F"|"fr"|"Fr"|"fR"|"FR"|"rf"|"rF"|"Rf"|"RF")
STRING_LITERAL                                                          {STRING_PREFIX}?({SHORT_STRING}|{LONG_STRING})





NAMES                                                                   [a-zA-Z_][0-9a-zA-Z_]*
DIGIT																	[0-9]
NON_ZERO_DIGIT															[1-9]
BIN_DIGIT																[0-1]
OCT_DIGIT																[0-7]
HEX_DIGIT																[0-9a-fA-F]
DEC_INTEGER																({NON_ZERO_DIGIT}("_"|{DIGIT})*)|(0+[0_]*)
BIN_INTEGER																0[bB]("_"|{BIN_DIGIT})+
OCT_INTEGER																0[oO]("_"|{OCT_DIGIT})+
HEX_INTEGER																0[xX]("_"|{HEX_DIGIT})+
DIGITPART																{DIGIT}("_"|{DIGIT})*
FRACTION																"."{DIGITPART}
EXPONENT																[eE]("+"|"-")?{DIGITPART}
POINT_FLOAT																({DIGITPART}?{FRACTION})|({DIGITPART}".")
EXPONENT_FLOAT															({DIGITPART}|{POINT_FLOAT}){EXPONENT}
FLOAT_NUMBER                                                            {POINT_FLOAT}|{EXPONENT_FLOAT}

IMAGINARY_NO                                                            ({FLOAT_NUMBER}|{DIGITPART})("J"|"j")


COMMENT                                                                 ("#"[^\n\r]*)

INDENT                                                                  {EOL}(((" ")|[\t])*)

EXPLICT_LINE_JOINING                                                    "\\"{EOL}

EXTRA_THINGS                                                            [ \t]*{COMMENT}?
WHITE_SPACE                                                             [ \t\f\r]


%%

    if (!tokenq.empty())
    {
        int token = tokenq.front();
        tokenq.pop_front();
        return token;
    }

"int"   {  
        yylval.node=new Node(node_num++, "TYPE NAME", yylineno, yytext); 
        return NAME; 
}
"float" {  
        yylval.node=new Node(node_num++, "TYPE NAME", yylineno, yytext);
        return NAME; 
}
"str"   {
        yylval.node=new Node(node_num++, "TYPE NAME", yylineno, yytext);  
        return NAME; 
}
"bool"  {  
        yylval.node=new Node(node_num++, "TYPE NAME", yylineno, yytext);
        return NAME; 
}
"list"  {  
        yylval.node=new Node(node_num++, "TYPE NAME", yylineno, yytext);
        return NAME; 
}
"break" {  
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
        return BREAK; 
}
"continue"  {  

        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
        return CONTINUE; 
}
 
"return"    { 
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
        return RETURN; 
}
"global"    {  
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
        return GLOBAL; 
}
        /* "nonlocal"  {
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
        return NONLOCAL; 
        } */
        /* "assert"    { 
                yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
                return ASSERT; 
        } */
"class" { 
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
        return CLASS; 
}

"def"   { 
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
        return DEF; 
}
"if"    { 
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
        return IF; 
}
"elif"  { 
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext); 
        return ELIF; 
}
"else"  { 
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext); 
        return ELSE; 
}
"while" { 
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext); 
        return WHILE; 
}
"for"   { 
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext); 
        return FOR; 
}
"in"    { 
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext); 
        return IN; 
}
"None"  {
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext); 
        return NONE; 
}
"True"  {
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext); 
        return TRUE; 
}
"False" { 
        yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext); 
        return FALSE; 
}
"or"    { 

        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext); 
        return OR; 
                                                                            
}
"and"   { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext); 
            return AND; 
}
"not"   { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext); 
        return NOT; 
}
    /* "is"    { 
            yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
                return IS; 
    } */

    /* "async" { 
            yylval.node=new Node(node_num++, "KEYWORD", yylineno, yytext);
            return ASYNC; 
    } */



"(" {  
        bracket_count++;
        yylval.node=new Node(node_num++, "DELIMITER", yylineno, yytext);
        return LEFT_PAREN; 
}
")" {  
        bracket_count--;
        yylval.node=new Node(node_num++, "DELIMITER", yylineno, yytext);
        return RIGHT_PAREN; 
}
"[" {  
        yylval.node=new Node(node_num++, "DELIMITER", yylineno, yytext);
        bracket_count++;
        return LEFT_BRACKET; 
}
"]" {  
        yylval.node=new Node(node_num++, "DELIMITER", yylineno, yytext);
        bracket_count--;
        return RIGHT_BRACKET; 
}
"->"    {  
        yylval.node=new Node(node_num++, "DELIMITER", yylineno, yytext);
        return ARROW;
}
";" {  
        yylval.node=new Node(node_num++, "DELIMITER", yylineno, yytext);
        return SEMICOLON; 
}
":" {  
        yylval.node=new Node(node_num++, "DELIMITER", yylineno, yytext);
        return COLON; 
}
"=" {   
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return EQUAL; 
}
"+="    {  
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return PLUS_EQUAL; 
}
"-="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return MINUS_EQUAL; 
}
"*="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return MULTIPLY_EQUAL; 
}
        /* "@="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return RATE_EQUAL; 
        } */
"/="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return DIVIDE_EQUAL; 
}
"%="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return REMAINDER_EQUAL; 
}
"&="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return BITWISE_AND_EQUAL; 
}
"|="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return BITWISE_OR_EQUAL; 
}
"^="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return BITWISE_XOR_EQUAL; 
}
"<<="   { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return LEFT_SHIFT_EQUAL; 
}
">>="   { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return RIGHT_SHIFT_EQUAL; 
}
"**="   { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return POWER_EQUAL; 
}
"//"    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return INTEGER_DIVIDE; 
}
"//="   { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return INTEGER_DIVIDE_EQUAL; 
}
"," { 
        yylval.node=new Node(node_num++, "DELIMITER", yylineno, yytext);
        return COMMA; 
}
"." { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return PERIOD; 
}
"*" { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return MULTIPLY; 
}
    /* "@" { 
            yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
            return RATE; 
    } */
"/" { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return DIVIDE; 
}
"**"    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return POWER; 
}
"|" { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return BITWISE_OR; 
}
"+" { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return PLUS; 
}
"-" { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return MINUS; 
}
"=="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return EQUAL_EQUAL; 
}
"!="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return NOT_EQUAL; 
}
"<="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return LESS_THAN_EQUAL; 
}
"<" { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return LESS_THAN; 
}
">="    { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return GREATER_THAN_EQUAL; 
}
">" { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return GREATER_THAN; 
}
"&" { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return BITWISE_AND; 
}
"^" { 
        yylval.node=new Node(node_num++, "OPERATOR", yylineno, yytext);
        return BITWISE_XOR; 
}
"<<"    { 
        yylval.node = new Node(node_num++, "OPERATOR", yylineno, yytext);
        return LEFT_SHIFT; 
}
">>"    { 
        yylval.node = new Node(node_num++, "OPERATOR", yylineno, yytext);
        return RIGHT_SIHFT; 
}
"%" { 
        yylval.node = new Node(node_num++, "OPERATOR", yylineno, yytext);
        return REMAINDER; 
}
"~" { 
        yylval.node = new Node(node_num++, "OPERATOR", yylineno, yytext);
        return BITWISE_NOT; 
}

"__name__" {
        return NAME__;
}

        /* "\"__main__\"" {
                return MAIN__;
        } */



{DEC_INTEGER}|{BIN_INTEGER}|{OCT_INTEGER}|{HEX_INTEGER}   { 



                                        yylval.node = new Node(node_num++, "NUMBER", yylineno, yytext);
                                        return INTEGER; 
}

{FLOAT_NUMBER}   { 

                                        yylval.node = new Node(node_num++, "NUMBER", yylineno, yytext);
                                        return FLOAT_NUMBER; 
}
{IMAGINARY_NO}   { 

                                        yylval.node = new Node(node_num++, "NUMBER", yylineno, yytext);
                                        return IMAGINARY_NO; 
}

{NAMES}                             {
                                        yylval.node = new Node(node_num++, "NAME", yylineno, yytext);
                                        return NAME; 
}

({EOL}{EXTRA_THINGS})/([\n])        {

}	
({EOL}{EXTRA_THINGS})/([\r][\n])    {

}	
{INDENT}                            { 
												
                                        if(!bracket_count) 
                                        {
                                            indent_handle(yytext); 
                                            // cerr<<"newline"<<endl;
                                            return NEWLINE;
                                        }
}

^({EXTRA_THINGS})/([\n])            {

}	
^({EXTRA_THINGS})/([\r][\n])        {

}	

                                                                            
{STRING_LITERAL}                    { 
                                        yylval.node = new Node(node_num++, "STRING_LITERAL", yylineno, modified2(modified(yytext)));

                                        return STRING_LITERAL;
}

{COMMENT}                           {

}

{EXPLICT_LINE_JOINING}              {

}

^(([ \t])+)                         {
                                        if(yylineno==1) 
                                            yyerror("Indentation error");
}

{WHITE_SPACE}                       {

}

.                                   {
                                        yyerror("Invalid token/Illegal character: " + (string)(yytext) );
}
                                                                                    
