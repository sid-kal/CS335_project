#ifndef __NODE_HEADER
#define __NODE_HEADER
#include<string>
#include<vector>
using namespace std;

struct Node {
    // public:
    int n;
    string name;
    Node* parent;
    int lineno;
    string lexval;
    vector<Node*> child;
    
    Node(int n, string name, int &lineno);
    Node(int n, string name, int &lineno, string lexval);
    Node();
    void add_child_back(Node* child);
    void add_child_front(Node *child);
};

typedef struct Node Node;

#endif