#include "x86.h"
#include "3ac.h"
extern vector<string> global_strings;
void resolve_names(vector<quad> &tac_func)
{
    map<string,int> mp;
    int curr_fn_offset=stoi(tac_func[1].op1);
    set<string> st={"call", "jump", ""};
    for(auto &temp:tac_func)
    {
        if(temp.op1!="")
        {
            
            if(temp.op1_entry!=NULL)
            {
                if(temp.op1_entry->container_st->type!=GLOBAL_ST){
                    int offset_calc = temp.op1_entry->offset-temp.op1_entry->container_st->size_of_params;
                    if(offset_calc>=0)
                    {
                        offset_calc+=8;

                    }
                    else
                    {   
                        offset_calc+=temp.op1_entry->container_st->size_of_params+16 + 40;
                        offset_calc=-offset_calc;

                    }
                    if(offset_calc > 0) 
                        temp.op1="-"+to_string(offset_calc)+"(%rbp)";
                    else
                        temp.op1=to_string(offset_calc).substr(1)+"(%rbp)";
                }
            }
            else if(temp.op1[0]=='#')
            {
                
                if(mp.count(temp.op1))
                {
                    temp.op1="-"+to_string(mp[temp.op1])+"(%rbp)";
                }
                else
                {
                    mp[temp.op1]=curr_fn_offset+8;
                    curr_fn_offset+=8;
                    temp.op1="-"+to_string(mp[temp.op1])+"(%rbp)";
                    
                }
            }
            else
            {
                if( temp.tac_type!=FUNCCALL )
                    temp.op1="$"+temp.op1;
            }

        }
        if(temp.op2!="")
        {
            if(temp.op2_entry!=NULL)
            {
                if(temp.op2_entry->container_st->type!=GLOBAL_ST){
                    int offset_calc = temp.op2_entry->offset-temp.op2_entry->container_st->size_of_params;
                    if(offset_calc>=0)
                        offset_calc+=8;
                    else
                    {
                        offset_calc+=temp.op2_entry->container_st->size_of_params+16+40;
                        offset_calc=-offset_calc;
                    }
                    if(offset_calc > 0) 
                        temp.op2="-"+to_string(offset_calc)+"(%rbp)";
                    else
                        temp.op2=to_string(offset_calc).substr(1)+"(%rbp)";
                }
            }
            else if(temp.op2[0]=='#')
            {
                if(mp.count(temp.op2))
                {
                    temp.op2="-"+to_string(mp[temp.op2])+"(%rbp)";
                }
                else
                {
                    mp[temp.op2]=curr_fn_offset+8;
                    curr_fn_offset+=8;
                    temp.op2="-"+to_string(mp[temp.op2])+"(%rbp)";
                    
                }
            }
            else
            {
                temp.op2="$"+temp.op2;
            }

        }
        if(temp.target!="")
        {
            if(temp.target_entry!=NULL)
            {
                if(temp.target_entry->container_st->type!=GLOBAL_ST){
                    int offset_calc = temp.target_entry->offset-temp.target_entry->container_st->size_of_params;
                    if(offset_calc>=0)
                        offset_calc+=8;
                    else
                    {
                        offset_calc+=temp.target_entry->container_st->size_of_params+16+40;
                        offset_calc=-offset_calc;
                    }

                    if(offset_calc > 0) 
                        temp.target="-"+to_string(offset_calc)+"(%rbp)";
                    else
                        temp.target=to_string(offset_calc).substr(1)+"(%rbp)";
                }
            }
            else if(temp.target[0]=='#')
            {
                if(mp.count(temp.target))
                {
                    temp.target="-"+to_string(mp[temp.target])+"(%rbp)";
                }
                else
                {
                    mp[temp.target]=curr_fn_offset+8;
                    curr_fn_offset+=8;
                    temp.target="-"+to_string(mp[temp.target])+"(%rbp)";
                    
                }
            }
            else
            {
                if(temp.tac_type!= JUMP && temp.tac_type!=FUNCCALL && temp.tac_type!=CONDITIONAL_JUMP )
                    temp.target="$"+temp.target;
            }

        }
    }
}

void generate_x86(vector<quad> &tac, string output_filename)
{
    vector<vector<quad>> funcs_tac;
    vector<quad> global_tac;
    int flag=0;
    for(auto temp:tac)
    {
        if(temp.tac_type==BEGINFUNC)
        {
            flag=1;

            quad func_label_temp=global_tac.back();
            global_tac.pop_back();

            funcs_tac.push_back({});
            funcs_tac.back().push_back(func_label_temp);

        }
        
        else if(temp.tac_type==ENDFUNC)
            flag=0;
        if(flag==1)
            funcs_tac.back().push_back(temp);
        else
        {
            if(temp.tac_type!=ENDFUNC && !(temp.tac_type==LABEL && temp.label=="programstart"))
                global_tac.push_back(temp);

        }
    }
    vector<quad> new_tac;
    for(auto temp:funcs_tac)
    {
        resolve_names(temp);
        for(auto temp1:temp)
        {
            if(temp1.tac_type==RETURN_STMT && temp[0].label=="main")
            {
                temp1.op1="$0";
            }
            new_tac.push_back(temp1);
        }
        new_tac.push_back(quad("","","","", EMPTY));
    }
    vector<string> x86; 

    x86.push_back(".data");
    x86.push_back("format_print_str: .asciz \"%s\\n\"");
    x86.push_back("format_print_int: .asciz \"%ld\\n\"");
    x86.push_back("format_print_true: .asciz \"True\\n\"");
    
    x86.push_back("format_print_false: .asciz \"False\\n\""); 
    for(int i=0;i<global_strings.size();i++)
    {
        x86.push_back("str"+to_string(i)+": .asciz "+global_strings[i]);
    }
    x86.push_back("\n");



    x86.push_back(".text");
    x86.push_back(".globl main");
    x86.push_back("\n");
    for(auto &temp:new_tac)
    {
        switch(temp.tac_type)
        {
            case LABEL:
            {
                x86.push_back(temp.label+":");
                break;
            }
            case BEGINFUNC:
            {
                x86.push_back("\tpushq %rbp");

                x86.push_back("\tpushq %rbx");
                x86.push_back("\tpushq %r12");
                x86.push_back("\tpushq %r13");
                x86.push_back("\tpushq %r14");
                x86.push_back("\tpushq %r15");
                x86.push_back("\tmovq %rsp, %rbp");
                x86.push_back("\tsubq "+temp.op2+", %rsp");

                break;
            }
            case ENDFUNC:
            {

                break;
            }
            case NAME_ASSIGNMENT:
            {
                if(temp.op1[1]=='.')
                {
                    x86.push_back("\tlea "+temp.op1.substr(2)+"(%rip), %rdx" );
                    x86.push_back("\tmovq %rdx, "+temp.target);
                }
                else
                {

                    x86.push_back("\tmovq "+temp.op1+", %rdx");
                    x86.push_back("\tmovq %rdx, "+temp.target);
                }
                break;
            }
            case RET_VAL:
            {
                x86.push_back("\tmovq %rax, "+temp.target);
                break;
            }
            case LOAD:
            {
                x86.push_back("\tmovq "+ temp.op1 +", %rdx");
                x86.push_back("\tmovq (%rdx), %rcx");
                x86.push_back("\tmovq %rcx, "+temp.target);
                break;
            }
            case STORE:
            {
                x86.push_back("\tmovq "+ temp.target +", %rdx");
                x86.push_back("\tmovq "+ temp.op1 +", %rcx");
                x86.push_back("\tmovq %rcx, (%rdx)");
                break;
            }
            case ARITH:
            {
                map<string, string> mp={{"+", "addq"},{"-", "subq"}, {"*", "imulq"}, {"/", "idivq"},{"//", ""}, {"%", ""} };
                if(temp.opcode=="/" || temp.opcode=="//")
                {
                    x86.push_back("\tmovq "+ temp.op2+ ", %rcx");
                    x86.push_back("\tmovq "+ temp.op1+ ", %rax");
                    x86.push_back("\tcqto");
                    x86.push_back("\tidivq %rcx");
                    x86.push_back("\tmovq %rax, "+temp.target);
                }
                else if(temp.opcode=="%"){
                    x86.push_back("\tmovq "+ temp.op2+ ", %rcx");
                    x86.push_back("\tmovq "+ temp.op1+ ", %rax");
                    x86.push_back("\tcqto");
                    x86.push_back("\tidivq %rcx");
                    x86.push_back("\tmovq %rdx, "+temp.target);
                }
                else if(temp.opcode=="**")
                {
                    x86.push_back("\tpushq %rax");
                    x86.push_back("\tpushq %rdx");
                    
                    x86.push_back("\tmovq %rsp, %rbx");
                    x86.push_back("\tmovq %rsp, %rcx");
                    x86.push_back("\taddq $-16, %rcx");
                    x86.push_back("\tandq $15, %rcx");
                    x86.push_back("\tsubq %rcx, %rsp");

                    x86.push_back("\tmovq "+temp.op1+",  %rdx");
                    x86.push_back("\tmovq "+temp.op2+",  %rcx");

                    x86.push_back("\tpushq %rcx");
                    x86.push_back("\tpushq %rdx");

                    x86.push_back("\tcall .power");

                    x86.push_back("\tmovq %rax, "+temp.target);

                    x86.push_back("\tmovq %rbx, %rsp");

                    x86.push_back("\tpopq %rax");
                    x86.push_back("\tpopq %rdx");
                }
                else
                {
                    x86.push_back("\tmovq "+ temp.op1+ ", %rcx");
                    x86.push_back("\tmovq "+ temp.op2+ ", %rdx");
                    x86.push_back("\t"+mp[temp.opcode] + " %rdx, %rcx");
                    x86.push_back("\tmovq %rcx, "+temp.target);
                }
                break;
            }
            case UNARY:
            {
                if(temp.opcode=="~")
                {
                    x86.push_back("\tmovq "+temp.op2+", %rdx");
                    x86.push_back("\tnot %rdx");
                    x86.push_back("\tmovq %rdx, "+temp.target);
                }
                else if(temp.opcode=="-")
                {
                    x86.push_back("\tmovq "+temp.op2+", %rdx");
                    x86.push_back("\tneg %rdx");
                    x86.push_back("\tmovq %rdx, "+temp.target);
                }
                break;
            }
            case BITWISE:
            {
                map<string, string> mp={{"^", "xorq"},{"|", "orq"}, {"&", "andq"}, {"<<", "sar"},{">>", "sal"} };
                if(temp.opcode==">>")
                {
                    x86.push_back("\tmovq "+ temp.op2+ ", %rcx");
                    x86.push_back("\tmovq "+ temp.op1+ ", %rax");
                    x86.push_back("\tsar %cl, %rax");
                    x86.push_back("\tmovq %rax, "+temp.target);
                }
                else if(temp.opcode=="<<"){
                    x86.push_back("\tmovq "+ temp.op2+ ", %rcx");
                    x86.push_back("\tmovq "+ temp.op1+ ", %rax");
                    x86.push_back("\tsal %cl, %rax");
                    x86.push_back("\tmovq %rax, "+temp.target);
                }
                else
                {
                    x86.push_back("\tmovq "+ temp.op1+ ", %rcx");
                    x86.push_back("\tmovq "+ temp.op2+ ", %rdx");
                    x86.push_back("\t"+mp[temp.opcode] + " %rdx, %rcx");
                    x86.push_back("\tmovq %rcx, "+temp.target);       // this is how it is. first operand is overwritten in case of and/(x)or
                }
                break;
            }
            case LOGIC:
            {
                map<string, string> mp={{">=","ge"}, {"<=", "le"}, {"<", "l"}, {">", "g"}, {"==", "e"}, {"!=", "ne"}};
                if(mp.count(temp.opcode))
                {
                    x86.push_back("\tmovq "+temp.op1+", %rdx");
                    x86.push_back("\tmovq "+temp.op2+", %rcx");
                    x86.push_back("\tcmp %rcx, %rdx");
                    x86.push_back("\tmovq $0, %rdx");
                    x86.push_back("\tset"+mp[temp.opcode]+" %dl");
                    x86.push_back("\tmovq %rdx, "+temp.target);
                }
                else
                {
                    map<string, string> mp={{"!", "not"},{"||", "orq"}, {"&&", "andq"} };
                    if(mp[temp.opcode] != "not"){
                        x86.push_back("\tmovq "+ temp.op1+ ", %rcx");
                        x86.push_back("\tmovq "+ temp.op2+ ", %rdx");
                        x86.push_back("\t"+mp[temp.opcode] + " %rdx, %rcx");
                        x86.push_back("\tmovq %rcx, "+temp.target);       // this is how it is. first operand is overwritten in case of and/(x)or
                    }
                    else
                    {
                        x86.push_back("\tmovq "+ temp.op2+ ", %rcx");
                        x86.push_back("\tmovq $1, %rdx");
                        x86.push_back("\txorq %rdx, %rcx");
                        x86.push_back("\tmovq %rcx, "+temp.target);       // this is how it is. first operand is overwritten in case of and/(x)or
                    }
                }
                break;
            }
            case PUSHPARAM:
            {
                x86.push_back("\tmovq "+temp.op1+", %rdx");
                x86.push_back("\tpushq %rdx");
                break;
            }
            case POPPARAM:
            {

                break;
            }
            case STACK_MANIPULATION:
            {
                if(temp.op1[1]=='-')
                {
                    x86.push_back("\tmovq %rsp, %rbx");
                    x86.push_back("\tmovq %rsp, %rcx");
                    x86.push_back("\taddq "+temp.op1+", %rcx");
                    x86.push_back("\tandq $15, %rcx");
                    x86.push_back("\tsubq %rcx, %rsp");
                }
                if(temp.op1[1]=='+')
                {
                    x86.push_back("\tmovq %rbx, %rsp");
                }
                break;
            }
            case FUNCCALL:
            {
                x86.push_back("\tcall "+temp.op1);
                break;
            }
            case CONDITIONAL_JUMP:
            {
                x86.push_back("\tmovq "+temp.op1+", %rdx");
                x86.push_back("\tcmpq $0, %rdx");
                x86.push_back("\tje " + temp.target);
                break;
            }
            case JUMP:
            {
                x86.push_back("\tjmp "+temp.target);
                break;
            }
            case RETURN_STMT:
            {
                if(temp.op1!="")
                {
                    x86.push_back("\tmovq "+temp.op1+ ", %rax");
                }

                x86.push_back("\tmovq %rbp, %rsp");
                x86.push_back("\tpopq %r15");
                x86.push_back("\tpopq %r14");
                x86.push_back("\tpopq %r13");
                x86.push_back("\tpopq %r12");
                x86.push_back("\tpopq %rbx");

                // x86.push_back("\tleave");
                x86.push_back("\tpopq %rbp");
                x86.push_back("\tret");
                break;
            }
            case CVT:
            {
                if(temp.opcode=="cvt_int_to_bool")
                {

                    x86.push_back("\tmovq "+temp.op1+", %rdx");
                    x86.push_back("\tmovq $0, %rcx");
                    x86.push_back("\tcmp $0, %rdx");
                    x86.push_back("\tsetne %cl");
                    x86.push_back("\tmovq %rcx, "+temp.op1);
                }
                break;
            }
            case SAVE_REG:
            {
                x86.push_back("\tpushq %rax");
                x86.push_back("\tpushq %rcx");
                x86.push_back("\tpushq %rdx");
                x86.push_back("\tpushq %rdi");
                x86.push_back("\tpushq %rsi");
                x86.push_back("\tpushq %r8");
                x86.push_back("\tpushq %r9");
                x86.push_back("\tpushq %r10");
                x86.push_back("\tpushq %r11");
                break;
            }
            case RESTORE_REG:
            {
                x86.push_back("\tpopq %r11");
                x86.push_back("\tpopq %r10");
                x86.push_back("\tpopq %r9");
                x86.push_back("\tpopq %r8");
                x86.push_back("\tpopq %rsi");
                x86.push_back("\tpopq %rdi");
                x86.push_back("\tpopq %rdx");
                x86.push_back("\tpopq %rcx");
                x86.push_back("\tpopq %rax");
                break;
            }
            case LEAVE:
            {
                break;
            }
            case EMPTY:
            {
                x86.push_back("");
                break;
            }
        }
    }



    x86.push_back("print_int:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rsi");
    x86.push_back("\tlea format_print_int(%rip), %rdi");
    x86.push_back("\txorq %rax, %rax");
    x86.push_back("\tcallq printf@plt");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");

    x86.push_back("print_float:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rsi");
    x86.push_back("\tlea format_print_int(%rip), %rdi");
    x86.push_back("\txorq %rax, %rax");
    x86.push_back("\tcallq printf@plt");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");

    x86.push_back("print_bool:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rcx");
    x86.push_back("\tcmp $0, %rcx");
    x86.push_back("\tjne print_true_label");
    x86.push_back("\tlea format_print_false(%rip), %rdi");
    x86.push_back("\tjmp print_false_exit");

    x86.push_back("print_true_label:");
    x86.push_back("\tlea format_print_true(%rip), %rdi");
    x86.push_back("print_false_exit:");

    x86.push_back("\txorq %rax, %rax");
    x86.push_back("\tcallq printf@plt");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");



    x86.push_back("print_str:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rsi");
    x86.push_back("\tlea format_print_str(%rip), %rdi");
    x86.push_back("\txorq %rax, %rax");
    x86.push_back("\tcallq printf@plt");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");


    x86.push_back("allocmem:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rdi");
    x86.push_back("\tcallq malloc");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");


    x86.push_back("strcmpl:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rdi");
    x86.push_back("\tmovq 24(%rbp), %rsi");
    x86.push_back("\tcallq strcmp");
    x86.push_back("\tcmp $0, %eax");
    x86.push_back("\tmovq $0, %rdx");
    x86.push_back("\tsetl %dl");
    x86.push_back("\tmovq %rdx, %rax");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");

    x86.push_back("strcmpg:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rdi");
    x86.push_back("\tmovq 24(%rbp), %rsi");
    x86.push_back("\tcallq strcmp");
    x86.push_back("\tcmp $0, %eax");
    x86.push_back("\tmovq $0, %rdx");
    x86.push_back("\tsetg %dl");
    x86.push_back("\tmovq %rdx, %rax");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");

    x86.push_back("strcmpe:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rdi");
    x86.push_back("\tmovq 24(%rbp), %rsi");
    x86.push_back("\tcallq strcmp");
    x86.push_back("\tcmp $0, %eax");
    x86.push_back("\tmovq $0, %rdx");
    x86.push_back("\tsete %dl");
    x86.push_back("\tmovq %rdx, %rax");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");

    x86.push_back("strcmpne:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rdi");
    x86.push_back("\tmovq 24(%rbp), %rsi");
    x86.push_back("\tcallq strcmp");
    x86.push_back("\tcmp $0, %eax");
    x86.push_back("\tmovq $0, %rdx");
    x86.push_back("\tsetne %dl");
    x86.push_back("\tmovq %rdx, %rax");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");

    x86.push_back("strcmple:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rdi");
    x86.push_back("\tmovq 24(%rbp), %rsi");
    x86.push_back("\tcallq strcmp");
    x86.push_back("\tcmp $0, %eax");
    x86.push_back("\tmovq $0, %rdx");
    x86.push_back("\tsetle %dl");
    x86.push_back("\tmovq %rdx, %rax");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");

    x86.push_back("strcmpge:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tmovq 16(%rbp), %rdi");
    x86.push_back("\tmovq 24(%rbp), %rsi");
    x86.push_back("\tcallq strcmp");
    x86.push_back("\tcmp $0, %eax");
    x86.push_back("\tmovq $0, %rdx");
    x86.push_back("\tsetge %dl");
    x86.push_back("\tmovq %rdx, %rax");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");


    x86.push_back(".power:");
    x86.push_back("\tpushq %rbp");
    x86.push_back("\tmovq %rsp, %rbp");
    x86.push_back("\tsubq $-32, %rsp");

    x86.push_back("\tmovq $0, -24(%rbp)");
    x86.push_back("\tmovq $1, -32(%rbp)");
    x86.push_back("	jmp	.L2");
    x86.push_back(".L3:");
    x86.push_back("	movq -32(%rbp), %rax");
    x86.push_back("	imulq 16(%rbp), %rax");
    x86.push_back("	movq %rax, -32(%rbp)");
    x86.push_back("	addq $1, -24(%rbp)");
    x86.push_back(".L2:");
    x86.push_back("	movq -24(%rbp), %rax");
    x86.push_back("	cmpq 24(%rbp), %rax");
    x86.push_back("	jl .L3");
    x86.push_back("	movq -32(%rbp), %rax");
    x86.push_back("\tleave");
    x86.push_back("\tret\n");

    ofstream fout(output_filename);
    for(auto x:x86)
    {
        fout<<x<<endl;
    }
}