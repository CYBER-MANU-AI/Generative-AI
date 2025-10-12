with entry {
    print("Welcome to JAC CALCULATOR");
    Num1 = float (input("Enter first number: "));
    op = input("Enter operator (*, +, /, -)" );
    Num2 = float (input("Enter second number: "));

    if op == "+"{
        print("Result: ", Num1 + Num2);
    }
    elif op == "-"{
        print("Result: ", Num1 - Num2);

    }
    elif op == "*"{
        print("Result: ", Num1 * Num2);
    }
    elif op == "/"{
        print("Result: ", Num1 / Num2);
    }
    else {
        print("INVALID INPUT");
    }
}