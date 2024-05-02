#include "node.h"
#include<bits/stdc++.h>
using namespace std;

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