import nimble_test
import time

print(nimble_test.fibtime(40))


def fib(n):
    if n <= 2:
        return 1
    else:
        return fib(n - 1) + fib(n - 2)


time1 = time.time()
x = 40
res = fib(x)
time2 = time.time()
print(f'Python3 Computed fib({x})={res} in {round((time2-time1), 2)} seconds')

# for i in nimble_test.nimrange(0, 10):
#     print(i)
