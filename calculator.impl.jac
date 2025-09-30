impl Calculator.compute {
    sum_value = self.num1 + self.num2;
    next = root ++> result(sum_value);
    visit next;  # Ends here; queues the move to result
}

impl Calculator.display {  # New impl for display ability
    print(f"The sum of {self.num1} and {self.num2} is {here.sum}.");
}
