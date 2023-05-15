package lesson18;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public class Calculator {
    private double firstOperand;
    private double secondOperand;
    private String operator;

    public double calculate() throws ZeroDividerException, WrongOperatorException {
        return switch (operator) {
            case "+" -> firstOperand + secondOperand;
            case "-" -> firstOperand - secondOperand;
            case "/" -> {
                if (secondOperand == 0) {
                    throw new ZeroDividerException("Divider can't be zero!");
                } else {
                    yield firstOperand / secondOperand;
                }
            }
            case "*" -> firstOperand * secondOperand;
            default -> throw new WrongOperatorException("Wrong operator: " + operator);
        };
    }
}
