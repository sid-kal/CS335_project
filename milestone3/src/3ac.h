#ifndef __3AC_HEADER
#define __3AC_HEADER

#include "symbol_table.h"
#include<bits/stdc++.h>
using namespace std;

enum tac_types {
    LABEL,
    BEGINFUNC,
    ENDFUNC,
    NAME_ASSIGNMENT,
    LOAD,
    STORE,
    ARITH,
    BITWISE,
    LOGIC,
    PUSHPARAM,
    POPPARAM,
    STACK_MANIPULATION,
    FUNCCALL,
    CONDITIONAL_JUMP,
    JUMP,
    RETURN_STMT,
    CVT,
    SAVE_REG,
    RESTORE_REG,
    LEAVE,
    UNARY,
    RET_VAL,
    EMPTY
};

struct quad{
    string opcode;
    string op1;
    string op2;
    string target;
    bool is_label;
    enum tac_types tac_type;

    string label;
    // int ;
    st_entry* op1_entry;
    st_entry* op2_entry;
    st_entry* target_entry;
    quad(string, string, string, string, enum tac_types);  // quad
    quad(string);   // label
};

extern vector<quad> tac;
extern int temporary_counter;
extern int label_counter;

void print_tac(string);
string new_temporary();
string new_label();
void gen_augassign_tac(Node*, Node*, Node*, st_entry*);
void convert(string, string, string);
#endif

