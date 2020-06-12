# Generators and Generator Expressions

Generators are written like regular functions but use the yield statement whenever they want to return data.
Each time next() is called on it, the generator resumes where it left off (it remembers all the data values and
which statement was last executed). An example shows that generators can be trivially easy to create:
Source - https://docs.python.org/3/tutorial/classes.html#generators

```python
data = 'rohan'

def my_range(x):
    i = 0
    while i < x:
        yield i
        i += 1


def reverse(data):
    for index in range(len(data) - 1, -1, -1):
        yield data[index]


# generator expressions
y = list(data[i] for i in range(len(data) - 1, -1, -1))
z = sum(i * i for i in range(10))

print([x for x in reverse(data)]) #=> ['n', 'a', 'h', 'o', 'r']
print(y) #=> ['n', 'a', 'h', 'o', 'r']
print(z) #=> 285
print([x for x in my_range(5)]) #=> [0, 1, 2, 3, 4]
```

