"""A Simple Addition Calculator"""

walker Calculator {
    has num1: int, num2: int;

    can compute with `root entry;
    can display with result entry;  # New entry ability for result nodes
}

node result {
    has sum: int;
}

# Will run when in CLI mode (not in cloud)
with entry:__main__ {
    root spawn Calculator(2, 3);
    root spawn Calculator(5, 7);
    root spawn Calculator(10, 15);
    root spawn Calculator(1, 1);
}
