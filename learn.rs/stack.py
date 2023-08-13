from typing import Any


"""
  in a stack, data are added incrementally and removed sequentially
  from the top(that is the last item added to the stack becomes the
  first item to be removed from the stack.

  class Stack, where you can add an item to it and it gets added to
  a keymap with numbering order(1,2,3,...), when you want to remove
  a item, the last item(with the highest number) gets removed/returned.

  in a stack, all data must have a known fixed size.
"""
class Stack:
    # init the stack with a array to hold the data
    def __init__(self):
        # self._data = [] # to illustrate, will use keymap later
        self._data = {}
        self._size = 0

    # method to add stuff to the stack
    def add(self, stuff: Any):
        # self._data.append(stuff)
        self._data[self._size] = stuff
        self._size += 1

    '''
    method to return specific stuff from the stack
    like, i want to get sth at a specific location but it defaults to
    the last item on the stack if no directive is given for that.
    '''
    def ret(self):
        # return self._data.pop() # will pop off the last item though
        if self._size == 0:
            raise IndexError("Stack is empty")
        return self._data[self._size - 1] # returns the last item on the stack

    # method to show the current state of the stack
    def show(self):
       # print(self._data)
       # show the whole data in the stack in array format
       stack_data_in_array_fmt = [value for value in self._data] # list comp to fmt the dict data
       return stack_data_in_array_fmt


    # method to clear the data in the stack
    def reset(self):
        # self._data.clear()
        pass

# use case
stack_obj = Stack()

for i in range(11):
    stack_obj.add(i)

stack_obj.show()

last_item_on_stack = stack_obj.ret()
print(last_item_on_stack)

stack_obj.reset()

stack_obj.show()
