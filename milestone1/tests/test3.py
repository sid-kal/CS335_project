class DirectedGraph:
  def __init__(self, num_nodes_: int, adj_list_: list[list[int]]):
    self.num_nodes: int = num_nodes_
    self.adj_list: list[list[int]] = adj_list_

  def add_edge(self, i: int, j: int):
    self.adj_list[i].append(j)

  def do_dfs(self, node:int, visited: list[bool]):
    if(visited[node]):
      return
    else:
      visited[node] = True
      print("Visited node ", node)
      
      for neighbour in self.adj_list[node]:
        self.do_dfs(neighbour, visited)

  def print_edges(self):
    for node_i in range(self.num_nodes):
      for node_j in self.adj_list[node_i]:
        print(node_i, "->", node_j)

def main():
  num_nodes: int = 10
  adj_list: list[list[int]] = []

  for i in range(num_nodes):
    node_nbrs: list[int] = []
    for j in range(i):
      node_nbrs.append(j)
    adj_list.append(node_nbrs)

  print(adj_list)
  myGraph: DirectedGraph = DirectedGraph(num_nodes, adj_list)
  myGraph.print_edges()

  visited: list[bool] = []

  for i in range(num_nodes):
    visited.append(False)

  print("Starting DFS from node 5 on first graph")
  myGraph.do_dfs(5, visited)

  second_list: list[list[int]] = []
  for i in range(num_nodes):
    empty_list: list[int] = []
    second_list.append(empty_list)

  mySecondGraph: DirectedGraph = DirectedGraph(num_nodes, second_list)

  for i in range(1, num_nodes):
    mySecondGraph.add_edge(i-1, i)

  visited2: list[bool] = []
  for i in range(num_nodes):
    visited2.append(False)

  print("Starting DFS from node 0 on second graph")
  mySecondGraph.do_dfs(0, visited2)

if __name__ == "__main__":
  main()
