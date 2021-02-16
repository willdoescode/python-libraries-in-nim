import nimpy, strformat, times, math

proc fib(n: int): int {.exportpy.} =
    if n <= 2:
            return 1
    else:
        return fib(n - 1) + fib(n - 2)

proc fibtime(n: int): string {.exportpy.} =
    let start = epochTime()
    let res = fib(n)
    let elapsed = (epochtime() - start).round(2)
    return &"Nim Computed fib({n})={res} in {elapsed} seconds"

iterator nimrange(start, finish: int): int {.exportpy.} =
    for i in start..finish:
        yield i

#when isMainModule:
#  echo("Hello, World!")
