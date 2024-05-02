class Solution:
    def reduce(self, s1: str) -> str:
        temp = ""
        for i in s1:
            if i != '#':
                temp += i
        return temp
    
    def moveRobots(self, s1: str, s2: str) -> str:
        # Function to check if the reduced strings are equal
        if self.reduce(s1) != self.reduce(s2):
            return "No"
            
        n = len(s1)
        c = 0

        # Checking if there is a valid path for robot A
        for i in range(n-1, -1, -1):
            if s1[i] == 'A':
                c += 1
            if s2[i] == 'A':
                c -= 1
            if c < 0:
                return "No"
        
        c = 0

        # Checking if there is a valid path for robot B
        for i in range(n):
            if s1[i] == 'B':
                c += 1
            if s2[i] == 'B':
                c -= 1
            if c < 0:
                return "No"

        return "Yes"

def main() -> None:
    sol = Solution()
    s1 = "A#A"
    s2 = "A#A"
    print("Can both robots move to the same final position?", sol.moveRobots(s1, s2))

if __name__ == "__main__":
    main()
