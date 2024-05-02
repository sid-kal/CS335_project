
# Number of bits to represent int
INT_BITS: int = 32
 
# Function to return maximum XOR subset in set[]
def maxSubarrayXOR(nums: list[int], n: int) -> int:
    # Initialize index of chosen elements
    index: int = 0
 
    # Traverse through all bits of integer starting from the most significant bit (MSB)
    for i in range(INT_BITS-1, -1, -1):
        # Initialize index of maximum element and the maximum element
        maxInd: int = index
        maxEle: int = -2147483648
        for j in range(index, n):
            # If i'th bit of set[j] is set and set[j] is greater than max so far
            if ( (nums[j] & (1 << i)) != 0 and nums[j] > maxEle ):
                maxEle = nums[j]
                maxInd = j
        
        # If there was no element with i'th bit set, move to smaller i
        if (maxEle == -2147483648):
            continue
 
        # Put maximum element with i'th bit set at index 'index'
        nums[index], nums[maxInd] = nums[maxInd], nums[index]
 
        # Update maxInd and increment index
        maxInd = index
 
        # Do XOR of nums[maxInd] with all numbers having i'th bit as set.
        for j in range(n):
            # XOR nums[maxInd] with those numbers which have the i'th bit set
            if (j != maxInd and (nums[j] & (1 << i)) != 0):
                nums[j] = nums[j] ^ nums[maxInd]
        
        # Increment index of chosen elements
        index += 1
    
    # Final result is XOR of all elements
    res: int = 0
    for num in nums:
        res ^= num
    return res

def main() -> None:
    nums: list[int] = [9, 8, 5]
    n: int = len(nums)
    print("Max subset XOR is ", end="")
    print(maxSubarrayXOR(nums, n))

if __name__ == "__main__":
    main()

# Source: https://www.geeksforgeeks.org/problems/maximum-subset-xor/1?page=1&difficulty=Hard&sprint=a663236c31453b969852f9ea22507634&sortBy=submissions