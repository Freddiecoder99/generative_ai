"""A Simple Addition Calculator with AI Explanations"""

import from byllm.llm { Model }

# glob llm = Model(model_name="gpt-4o",verbose=False);
glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

"""Provide a fun fact or explanation about the sum"""
def explain_sum(num1: int, num2: int, sum: int) -> str by llm();

walker Calculator {
    has num1: int, num2: int;

    can compute with `root entry;
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
