
class Solution:
    
    # Function to find largest rectangular area possible in a given histogram.
    def getMaxArea(self, histogram: list[int]) -> int:
        
        # Creating an empty stack. The stack holds indexes of histogram[] array.
        # Bars stored in stack are always in increasing order of their heights.
        stack: list[int] = []
    
        max_area: int = 0   
    
        index: int = 0
        # Traversing the array.
        while index < len(histogram):
    
            # If current bar is greater than or equal to bar on top 
            # of stack, we push the index into stack.
            if (not stack) or (histogram[stack[-1]] <= histogram[index]):
                stack.append(index)
                index += 1
    
            # If current bar is lower than bar on top of stack, we calculate
            # area of rectangle with top of stack as the smallest bar.  
            # i is rightindex for top and element before top in stack is leftindex
            else:
                
                # Popping the top element of stack.
                top_of_stack: int = stack.pop()
    
                # Calculating the area with hist[tp] stack as smallest bar.
                area: int = (histogram[top_of_stack] *
                             ((index - stack[-1] - 1)
                              if stack else index))
    
                # Updating maximum area, if needed.
                max_area = max(max_area, area)
    
        # Now popping the remaining bars from stack and calculating 
        # area with every popped bar as the smallest bar.
        while stack:
            
            top_of_stack: int = stack.pop()
            area: int = (histogram[top_of_stack] *
                         ((index - stack[-1] - 1)
                          if stack else index))
    
            # Updating maximum area, if needed.
            max_area = max(max_area, area)
    
        # Returning the maximum area.
        return max_area

def main() -> None:
    sol = Solution()
    histogram = [6, 2, 5, 4, 5, 1, 6]
    print("Largest rectangular area in the given histogram is:", sol.getMaxArea(histogram))

if __name__ == "__main__":
    main()
