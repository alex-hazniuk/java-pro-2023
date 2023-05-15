package lesson18;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Calculator launched. \nEnter first operand:");
        double firstOperand = scanner.nextDouble();
        scanner.nextLine();
        System.out.println("Enter operator:");
        String operator = scanner.nextLine();
        System.out.println("Enter second operand:");
        double secondOperand = scanner.nextDouble();

        Calculator calculator = new Calculator(firstOperand, secondOperand, operator);
        try {
            double result = calculator.calculate();
            System.out.println(result);
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        scanner.close();
    }
}
