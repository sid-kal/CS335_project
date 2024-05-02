class Node:
    def __init__(self) -> None:
        self.next: list['Node'] = [None] * 26
        self.cnt: int = 0
        self.isEnding: bool = False

def insert(curr: Node, s: str, index: int = 0) -> None:
    curr.cnt += 1
    if index == len(s):
        curr.isEnding = True
        return
    nextIndex: int = ord(s[index]) - ord('a')
    if curr.next[nextIndex] is None:
        curr.next[nextIndex] = Node()
    insert(curr.next[nextIndex], s, index+1)

def search(curr: Node, s: str, index: int = 0) -> int:
    if curr is None:
        return 0
    if index == len(s):
        return curr.cnt
    nextIndex: int = ord(s[index]) - ord('a')
    return search(curr.next[nextIndex], s, index+1)

def remove(curr: Node, s: str, index: int = 0) -> Node:
    curr.cnt -= 1
    if curr.cnt == 0:
        return None
    if index == len(s):
        curr.isEnding = False
        return curr
    nextIndex: int = ord(s[index]) - ord('a')
    curr.next[nextIndex] = remove(curr.next[nextIndex], s, index+1)
    return curr

if __name__ == "__main__":
    root: Node = Node()
    insert(root, "abc")
    insert(root, "aba")
    insert(root, "ab")
    insert(root, "aca")

    print(search(root, "ab"))

    root = remove(root, "abc")

    print(search(root, "ab"))
    print(search(root, "abc"))
