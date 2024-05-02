#ifndef _SYMBOL_TABLE_HEADER
#define _SYMBOL_TABLE_HEADER
#include<bits/stdc++.h>



// #ifndef __NODE_HEADER
// #define __NODE_HEADER
// #include "symbol_table.h"
// #include<string>
// #include<vector>
using namespace std;

struct symbol_table_entry;

typedef struct Node {
    // public:
    int n;
    string name;
    Node* parent;
    int lineno;
    string lexval;
    vector<Node*> child;

    struct temp_type_info* info; 
    string lvalue;
    string rvalue;

    int if_executed_jump;
    int if_not_executed_jump;
    string else_block_label;

    int size_of_params;

    int begin_func_idx;
    vector<int> break_jumps;

    Node(int n, string name, int &lineno);
    Node(int n, string name, int &lineno, string lexval);
    Node();
    void add_child_back(Node* child);
    void add_child_front(Node *child);
}Node;

struct temp_type_info
{
    string type;
    string type_min;
    vector<string> args;
    vector<string> args_min;
    vector<symbol_table_entry*> candidates;
    int trailer_type;//0->(),1->[], 2->.Name 
    bool is_lvalue;
};

// typedef struct Node Node;

// #endif




// using namespace std;

enum types{OBJ, CLASS_DEFN, FUNCTION_DEFN};

struct symbol_table;

typedef struct symbol_table_entry
{
    enum types entry_type;
    vector<string> type;
    string return_type;
    string lexval;
    int width;
    int line_no;
    int offset;     // size of parameters for function, size of members for class
    // int list_level;
    struct symbol_table* container_st;
    struct symbol_table* local_st;
    struct symbol_table* obj_st;

    symbol_table_entry(enum types entry_type, vector<string> type, string lexval, int width, int line_no, int offset, symbol_table* container_st, symbol_table* local_st);

} st_entry;

enum st_types {CLASS_ST, FUNCTION_ST, GLOBAL_ST};

struct symbol_table
{
    // map<pair<string, vector<string>>, st_entry*> entries;
    map<string, vector<st_entry*>> entries;
    int offset;
    enum st_types type;
    st_entry* my_st_entry;
    struct symbol_table* parent_class_st;
    st_entry* is_present(string, vector<string>, vector<string>);
    st_entry* is_present(string);
    int insert(st_entry*);
    // symbol_table_entry* inherit_tree_lookup(string, vector<string>);
    symbol_table_entry* inherit_tree_lookup(string);
    symbol_table();

    vector<string> global_vars; 

};

struct symbol_table_stack
{
    vector<symbol_table*> tables;
    // st_entry* lookup(string, vector<string>);
    st_entry* lookup(string);
    symbol_table* add_table(enum st_types);
    symbol_table* pop_table();
};

string resolve_type(Node*);
int resolve_width(string);
void print_st(vector<symbol_table*>);
string type_check_arith(string, string, string, int);
string type_check_shift(string, string, string, int);
bool is_valid_type(string);
// bool can_be_coerced(string, string);
bool compare_args(vector<string>, vector<string>,vector<string>);
bool same_type_kind(string, string);
string min_type(string, string);
string max_type(string, string);
bool is_obj(string);
bool is_list(string);
string strip(string);
bool can_be_converted(string, string);
#endif

