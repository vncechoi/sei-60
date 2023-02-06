# Fibonacci sequence: fib(n) = fib(n-1) + fib(n-2)
def fibonacci_iterative(n)
    a = 1
    b = 1
    while n > 2
        a, b = b, a + b # Atomic parallel assignment
        n -= 1
    end

    b
end

def fibonacci_recursive(n)
    if n <= 2
        1
    else
        fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
    end
end

# Bonus homework:
# Make this faster

# Option 1: Memoisation
def fib_memo(n)
    @fib ||= {} # assigns the empty hash to @fib if it doesn't already have a value
    if @fib[n]  # if we have previously saved this Fibonacci number...
        @fib[n] # ...return it immediately
    elsif n <= 2
        1
    else
        @fib[n] = fib_memo(n-1) + fib_memo(n-2) # calculate and save for later use
    end
end

# Option 2: Iterative recursion (call the function only once per iteration)
def fib(n, a=1, b=1)
    if n == 1 || n == 2 # base case
        b
    else
        fib n-1, b, a+b # Almost mystical
    end
end

binding.irb
