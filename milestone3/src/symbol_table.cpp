#include<bits/stdc++.h>
using namespace std;
#include "symbol_table.h"
#include "3ac.h"
extern symbol_table_stack* st_stack;
extern symbol_table* curr_st;
extern void yyerror(string s);
extern map<string,int> type_priority;
extern void error(string, int);



Node::Node(int n, string name, int &lineno){
    this->n=n;
    this->name=name;
    this->parent=NULL;
    this->lineno=lineno;
    this->lexval="";
}

Node::Node(int n, string name, int &lineno, string lexval){
    this->n=n;
    this->name=name;
    this->parent=NULL;
    this->lineno=lineno;
    this->lexval=lexval;
}

Node::Node(){
}

void Node::add_child_back(Node* child)
{
    if(child)
    {
        (this->child).push_back(child);
        child->parent=this;
    }
}

void Node::add_child_front(Node* child)
{
    if(child)
    {
        (this->child).insert((this->child).begin(),child);
        child->parent=this;
    }
        
}





symbol_table_entry::symbol_table_entry(enum types entry_type, vector<string> type, string lexval, int width, int line_no, int offset,  symbol_table* container_st, symbol_table* local_st)
{
    this->entry_type=entry_type;
    this->type=type;
    this->lexval=lexval;
    this->width=width;
    this->line_no=line_no;
    this->offset=offset;
    this->container_st=container_st;
    this->local_st=local_st;
    this->obj_st=NULL;
}

st_entry* symbol_table::is_present(string s, vector<string> v, vector<string> v_min)
{
    if(entries.count(s))
    {
        vector<st_entry*> v_of_sts=this->entries[s];
        for(int i=0;i<v_of_sts.size();i++)
        {
            if(compare_args(v_of_sts[i]->type,v,v_min))
            {
                return v_of_sts[i];
            }
        }
    }
    return NULL;
}

st_entry* symbol_table::is_present(string s)
{
    if(entries.count(s))
        return this->entries[s][0];
    if(count(global_vars.begin(), global_vars.end(), s) && this->type!=GLOBAL_ST)
    {
        st_entry* ret=st_stack->tables[0]->is_present(s);
        return ret;
    }
    return NULL;
}

st_entry* symbol_table::inherit_tree_lookup(string s)
{
    symbol_table* st_ptr=this;
    while(st_ptr)
    {
        st_entry* temp=st_ptr->is_present(s);
        if(temp)
            return temp;
        st_ptr=st_ptr->parent_class_st;
    }
    return NULL;
}

int symbol_table::insert(st_entry* ste)
{
    this->entries[ste->lexval].push_back(ste);
    return 0;
}
symbol_table::symbol_table()
{
    offset=0;
    parent_class_st=NULL;
    type=GLOBAL_ST;
    my_st_entry=NULL;
}


st_entry* symbol_table_stack::lookup(string s)
{
    for(int i=tables.size()-1;i>=0;i--)
    {
        st_entry* temp=tables[i]->is_present(s);
        if(tables[i]->type==CLASS_ST)
            continue;
        if(temp)
            return temp;
    }
    return NULL;
}

symbol_table* symbol_table_stack::add_table(enum st_types type)
{
    symbol_table* new_table=new symbol_table();
    this->tables.push_back(new_table);
    new_table->type=type;
    return new_table;
}

symbol_table* symbol_table_stack::pop_table()
{


    if(this->tables.size()>0)
    {
        this->tables.pop_back();
    }
    if(this->tables.size()>0)
    {
        return this->tables.back();
    }

    return NULL;
}



string resolve_type(Node* node)
{
    if(node->lexval!="")
    {
        return node->lexval;
    }
    string str;
    for(auto child: node->child)
    {
        str+=resolve_type(child);
    } 
    return str;
}


int resolve_width(string type)
{
    if(type=="int")
    {
        return 8;
    }
    else if(type=="float")
    {
        return 8;
    }
    else if(type=="bool")
    {
        return 8;
    }
    else if(type=="str")
    {
        // pointer
        return 8;
    }
    else
    {
        return 8;
    }
}


void print_st(vector<symbol_table*> v)
{

    for(auto table:v)
    {
        string table_name;
        if(table->type == GLOBAL_ST){
            table_name = "global_symtab";
        }
        else{
            if(table->my_st_entry->container_st->type != GLOBAL_ST){
                table_name = table->my_st_entry->container_st->my_st_entry->lexval + ".";
            }
            else{
                table_name = "";
            } 
            table_name += table->my_st_entry->lexval;
        }
        string output_filename = table_name + ".csv";
        ofstream fout;
        fout.open(output_filename);
        fout<<"Symbol Name"<<","<<"Token,Category"<<","<<"Type"<<","<<"Line Number"<<","<<"Return Type (for function)"<<endl;
        for(auto p:table->entries)
        {
            for(int k = 0; k<p.second.size(); k++){
                if(p.second[k]->entry_type==FUNCTION_DEFN)
                {
                    fout<<p.first<<","<<"NAME,Function"<<",(";
                    for(int i=0;i<p.second[k]->type.size();i++)
                    {
                        fout<<p.second[k]->type[i];
                        if(i<p.second[k]->type.size()-1)
                            fout<<":";
                    }
                    fout<<"),"<<p.second[k]->line_no<<","<<p.second[k]->return_type<<endl;
                }
                else if(p.second[k]->entry_type==CLASS_DEFN)
                {
                    fout<<p.first<<","<<"NAME,Class"<<","<<""<<","<<p.second[k]->line_no<<endl;
                }
                else
                    fout<<p.first<<","<<"NAME,Variable"<<","<<p.second[k]->type[0]<<","<<p.second[k]->line_no<<endl;
            }
        }
        fout.close();
    }

}

bool is_valid_type(string s)
{
    if(s=="int" || s=="float" ||s=="bool" ||s=="str" ||s=="None")
    {
        return true;
    }
    st_entry* class_entry=st_stack->lookup(s);
    if(class_entry!=NULL && class_entry->entry_type==CLASS_DEFN)
    {
        return true;
    }
    if(s.size()>=6 && s.substr(0, 5)=="list[" && s.back()==']' && is_valid_type(s.substr(5, s.size()-6)))
        return true;
    return false;
}

string type_check_arith(string t1, string t2, string error_str, int error_lineno)
{
    
    if(t1=="int" && t2=="bool")
    {
        return "int";
    }
    if(t1=="bool" && t2=="int")
    {
        return "int";
    }
    if(t1=="bool" && t2=="bool")
    {
        return "int";
    }
    if(t1=="int" && t2=="float")
    {
        return "float";
    }
    if(t1=="float" && t2=="int")
    {
        return "float";
    }
    if(t1=="float" && t2=="float")
    {
        return "float";
    }
    if(t1=="int" && t2=="int")
    {
        return "int";
    }
    error(error_str, error_lineno);
    return "";
}


string type_check_shift(string str1, string str2, string error_str, int error_lineno ){
    if((str1 == "int" || str1 == "bool") && (str2 == "int" || str2 == "bool")) return "int";
    error(error_str, error_lineno);
    return "";
}

bool same_type_kind(string t1, string t2){
    if(t1 != t2)
    {
        if((t1=="int" ||t1=="float" || t1=="bool")&& (t2=="int" ||t2=="float" || t2=="bool"))
        {
            return true;
        }
        return false;
    }
    else 
        return true;
}

bool can_be_converted(string t1, string t2)
{
    if(is_list(t1) || is_list(t2))
    {
        if(!(is_list(t1) && is_list(t2)))
            return false;
        return can_be_converted(strip(t1), strip(t2));
    }
    if(is_obj(t1) || is_obj(t2))
    {
        if(!(is_obj(t2) && is_obj(t1)))
            return false;
        if(t1==t2)
            return true;
        else
            return false;
    }
    if(t1 == t2){
        return true;
    }

    if(type_priority.count(t1) && type_priority.count(t2) && abs(type_priority[t1]-type_priority[t2])<=1)
    {
        return true;
    }
    return false;
}

bool compare_args(vector<string> formal_param, vector<string> actual_min, vector<string> actual_max)
{
    if(formal_param.size()!=actual_min.size())
        return false;
    if(formal_param.size()!=actual_max.size())
        return false;
    for(int i=0;i<formal_param.size();i++)
    {
        if(!can_be_converted(formal_param[i], actual_min[i]) || !can_be_converted(formal_param[i], actual_max[i]))
            return false;
    }
    return true;
}

string strip(string s)
{
    return s.substr(5,s.size()-6);
}
 
bool is_list(string s)
{
    if(s.size()>=6 && s.substr(0,5)=="list[" && s.back()==']')
        return true;
    return false;
}

bool is_obj(string s){
    if(s == "int" || s == "str" || s == "bool" || s == "float"){
        return false;
    }
    return true;
}

string max_type(string t1, string t2)
{
    if(is_list(t1) || is_list(t2))
    {
        if(!(is_list(t1) && is_list(t2)))
            yyerror("Type mismatch in list.");
        return "list["+max_type(strip(t1), strip(t2))+"]";
    }
    if(is_obj(t1) || is_obj(t2))
    {
        if(!(is_obj(t2) && is_obj(t1)))
            yyerror("Type mismatch in list.");
        if(t1==t2)
            return t1;
        else
            yyerror("Type mismatch in list.");       
    }
    if(t1=="str" || t2=="str")
    {
        if(!(t1=="str" && t2=="str"))
            yyerror("Type mismatch in list.");
        if(t1==t2)
            return t1;
        else
            yyerror("Type mismatch in list.");       
    }
    if(t1 == t2){
        return t1;
    }
    if(type_priority[t1]<type_priority[t2])
    {
        return t2;
    }
    return t1;

}


string min_type(string t1, string t2){
    if(is_list(t1) || is_list(t2)){
        if(!(is_list(t1) && is_list(t2))){
            yyerror("Type mismatch in list");
        }
        return "list[" + min_type(strip(t1), strip(t2))+ "]";
    }
    if(is_obj(t1) || is_obj(t2)){
        if(!(is_obj(t2) && is_obj(t1))){
            yyerror("Type mismatch in list");
        }
        if(t1 == t2){
            return t1;
        }
        else yyerror("Type mismatch in list");
    }
    if(t1=="str" || t2=="str")
    {
        if(!(t1=="str" && t2=="str"))
            yyerror("Type mismatch in list.");
        if(t1==t2)
            return t1;
        else
            yyerror("Type mismatch in list.");       
    }
    if(t1 == t2){
        return t1;
    }
    if(type_priority[t1] < type_priority[t2]){
        return t1;
    }
    return t2;
}