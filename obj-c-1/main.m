//
//  main.m
//  obj-c-1
//
//  Created by Юлия Дебелова on 27.08.2023.
//

#import <Foundation/Foundation.h>

void quadracticEquation(double a, double b, double c) {
    double D = pow(b, 2) - 4 * a * c;
    if (D > 0) {
        double result1 = (-b-sqrt(D)) / 2 * a;
        double result2 = (-b+sqrt(D)) / 2 * a;
        NSLog(@"%f, %f", result1, result2);
    } else if (D == 0) {
        double result = -b / 2 * a;
        NSLog(@"%f", result);
    }else {
        NSLog(@"Нет корней");
    }
}

void maxOfThreeNumbers(double x1, double x2, double x3) {
    double max = x1;
    if (x2 > max) max = x2;
    if (x3 > max) max = x2;
    NSLog(@"Большее из трех: %f", max);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"x^2 - 8x + 12 = 0:");
        quadracticEquation(1, -8, 12);
        NSLog(@"");
        NSLog(@"12x^2 - 4x + 2 = 0:");
        quadracticEquation(12, -4, 2);
        NSLog(@"");
        NSLog(@"x^2 - 100x - 12 = 0:");
        quadracticEquation(1, -100, -2);
        NSLog(@"");
        maxOfThreeNumbers(2, 5, 1);
    }
    return 0;
}
