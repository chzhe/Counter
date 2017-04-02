//
//  ViewController.m
//  Counter
//
//  Created by 程哲 on 17/3月/19.
//  Copyright © 2017年 程哲. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) NSMutableArray *array1;
@property (nonatomic, strong) NSMutableArray *array2;
@property (nonatomic, strong) NSString *operator;
@property (nonatomic, assign) BOOL isFushu1;
@property (nonatomic, assign) BOOL isFushu2;


@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIColor *black = [UIColor blackColor];
    self.view.backgroundColor = black;
    
    UIView *view  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 375, 80)];
    self.titleLabel.text = @"0";
    self.titleLabel.textColor =[UIColor whiteColor];
    self.titleLabel.font = [UIFont systemFontOfSize:70];
    self.titleLabel.textAlignment = NSTextAlignmentRight;
    self.titleLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.titleLabel];
   
   
    
    UIColor *white = [UIColor whiteColor];
    UIColor *gray = [UIColor colorWithRed:0.827 green:0.831 blue:0.839 alpha:1];
    UIColor *orange = [UIColor colorWithRed:0.9765 green:0.561 blue:0.067 alpha:1];
    
    
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 200, 93.75, 93.4)];
    button1.backgroundColor = gray;
    [button1 setTitle:@"AC" forState:normal];
    button1.titleLabel.font = [UIFont systemFontOfSize:30];
    button1.layer.borderColor = black.CGColor;
    button1.layer.borderWidth = 0.5;
    [button1 setTitleColor:black forState:normal];
    [button1 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button1.tag = 100;
    [self.view addSubview:button1];
  
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(93.75, 200, 93.75, 93.4)];
    button2.backgroundColor = gray;
    [button2 setTitle:@"+/-" forState:normal];
    [button2 setTitleColor:black forState:normal];
    [button2 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button2.titleLabel.font =[UIFont systemFontOfSize:30];
    button2.layer.borderColor = black.CGColor;
    button2.layer.borderWidth = 0.5;
    button2.tag = 101;
    [self.view addSubview:button2];
    
    UIButton *button3 =[[UIButton alloc] initWithFrame:CGRectMake(187.5, 200, 93.75, 93.4)];
    button3.backgroundColor = gray;
    [button3 setTitle:@"%" forState:normal];
    [button3 setTitleColor:black forState:normal];
    [button3 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button3.titleLabel.font = [UIFont systemFontOfSize:30];
    button3.layer.borderColor = black.CGColor;
    button3.layer.borderWidth = 0.5;
    button3.tag = 102;
    [self.view addSubview:button3];
    
    UIButton * button4 =[[UIButton alloc] initWithFrame:CGRectMake(281.25, 200, 93.75, 93.4)];
    button4.backgroundColor = orange;
    [button4 setTitle:@"÷" forState:normal];
    [button4 setTitleColor:white forState:normal];
    [button4 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button4.titleLabel.font = [UIFont systemFontOfSize:40];
    button4.layer.borderColor = black.CGColor;
    button4.layer.borderWidth = 0.5;
    button4.tag = 103;
    [self.view addSubview:button4];
    
    UIButton * button5 =[[UIButton alloc] initWithFrame:CGRectMake(0, 293.4,93.75, 93.4)];
    button5.backgroundColor = gray;
    [button5 setTitle:@"7" forState:normal];
    [button5 setTitleColor:black forState:normal];
    [button5 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button5.titleLabel.font = [UIFont systemFontOfSize:30];
    button5.layer.borderColor = black.CGColor;
    button5.layer.borderWidth = 0.5;
    button5.tag = 7;
    [self.view addSubview:button5];
    
    UIButton * button6 =[[UIButton alloc] initWithFrame:CGRectMake(93.75, 293.4, 93.75, 93.4)];
    button6.backgroundColor = gray;
    [button6 setTitle:@"8" forState:normal];
    [button6 setTitleColor:black forState:normal];
    [button6 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button6.titleLabel.font = [UIFont systemFontOfSize:30];
    button6.layer.borderColor = black.CGColor;
    button6.layer.borderWidth = 0.5;
    button6.tag = 8;
    [self.view addSubview:button6];
    
    UIButton * button7 =[[UIButton alloc] initWithFrame:CGRectMake(187.5, 293.4, 93.75, 93.4)];
    button7.backgroundColor = gray;
    [button7 setTitle:@"9" forState:normal];
    [button7 setTitleColor:black forState:normal];
    [button7 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button7.titleLabel.font = [UIFont systemFontOfSize:30];
    button7.layer.borderColor = black.CGColor;
    button7.layer.borderWidth = 0.5;
    button7.tag = 9;
    [self.view addSubview:button7];
    
    UIButton * button8 =[[UIButton alloc] initWithFrame:CGRectMake(281.25, 293.4, 93.75, 93.4)];
    button8.backgroundColor = orange;
    [button8 setTitle:@"×" forState:normal];
    [button8 setTitleColor:white forState:normal];
    [button8 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button8.titleLabel.font = [UIFont systemFontOfSize:40];
    button8.layer.borderColor = black.CGColor;
    button8.layer.borderWidth = 0.5;
    button8.tag = 104;
    [self.view addSubview:button8];
    
    UIButton *button9 = [[UIButton alloc] initWithFrame:CGRectMake(0, 386.8, 93.75, 93.4)];
    button9.backgroundColor = gray;
    [button9 setTitle:@"4" forState:normal];
    button9.titleLabel.font = [UIFont systemFontOfSize:30];
    [button9 setTitleColor:black forState:normal];
    [button9 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button9.layer.borderColor = black.CGColor;
    button9.layer.borderWidth = 0.5;
    button9.tag = 4;
    [self.view addSubview:button9];
    
    UIButton *button10 =[[UIButton alloc] initWithFrame:CGRectMake(93.75, 386.8, 93.75, 93.4)];
    button10.backgroundColor = gray;
    [button10 setTitle:@"5" forState:normal];
    [button10 setTitleColor:black forState:normal];
    [button10 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button10.titleLabel.font = [UIFont systemFontOfSize:30];
    button10.layer.borderColor = black.CGColor;
    button10.layer.borderWidth = 0.5;
    button10.tag = 5;
    [self.view addSubview:button10];
    
    UIButton *button11 = [[UIButton alloc] initWithFrame:CGRectMake(187.5, 386.8, 93.75, 93.4)];
    button11.backgroundColor = gray;
    [button11 setTitle:@"6" forState:normal];
    [button11 setTitleColor:black forState:normal];
    [button11 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button11.titleLabel.font = [UIFont systemFontOfSize:30];
    button11.layer.borderColor = black.CGColor;
    button11.layer.borderWidth = 0.5;
    button11.tag = 6;
    [self.view addSubview:button11];
    
    UIButton *button12 = [[UIButton alloc] initWithFrame:CGRectMake(281.25, 386.8, 93.75, 93.4)];
    button12.backgroundColor = orange;
    [button12 setTitle:@"-" forState:normal];
    [button12 setTitleColor:white forState:normal];
    [button12 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button12.titleLabel.font = [UIFont systemFontOfSize:40];
    button12.layer.borderColor = black.CGColor;
    button12.layer.borderWidth = 0.5;
    button12.tag = 105;
    [self.view addSubview:button12];
    
    UIButton *button13 = [[UIButton alloc] initWithFrame:CGRectMake(0, 480.2, 93.75, 93.4)];
    button13.backgroundColor = gray;
    [button13 setTitle:@"1" forState:normal];
    [button13 setTitleColor:black forState:normal];
    [button13 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button13.titleLabel.font = [UIFont systemFontOfSize:30];
    button13.layer.borderColor = black.CGColor;
    button13.layer.borderWidth = 0.5;
    button13.tag = 1;
    [self.view addSubview:button13];
    
    UIButton *button14 = [[UIButton alloc] initWithFrame:CGRectMake(93.75, 480.2, 93.75, 93.4)];
    button14.backgroundColor = gray;
    [button14 setTitle:@"2" forState:normal];
    [button14 setTitleColor:black forState:normal];
    [button14 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button14.titleLabel.font = [UIFont systemFontOfSize:30];
    button14.layer.borderColor = black.CGColor;
    button14.layer.borderWidth = 0.5;
    button14.tag = 2;
    [self.view addSubview:button14];
    
    UIButton *button15 = [[UIButton alloc] initWithFrame:CGRectMake(187.5, 480.2, 93.75, 93.4)];
    button15.backgroundColor = gray;
    [button15 setTitle:@"3" forState:normal];
    [button15 setTitleColor:black forState:normal];
    [button15 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button15.titleLabel.font = [UIFont systemFontOfSize:30];
    button15.layer.borderColor = black.CGColor;
    button15.layer.borderWidth = 0.5;
    button15.tag = 3;
    [self.view addSubview:button15];
    
    UIButton *button16 = [[UIButton alloc] initWithFrame:CGRectMake(281.25, 480.2, 93.75, 93.4)];
    button16.backgroundColor = orange;
    [button16 setTitle:@"+" forState:normal];
    [button16 setTitleColor:white forState:normal];
    [button16 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button16.titleLabel.font = [UIFont systemFontOfSize:40];
    button16.layer.borderColor = black.CGColor;
    button16.layer.borderWidth = 0.5;
    button16.tag = 106;
    [self.view addSubview:button16];
    
    UIButton *button17 = [[UIButton alloc] initWithFrame:CGRectMake(0, 573.6, 187.5, 93.4)];
    button17.backgroundColor = gray;
    [button17 setTitle:@"0" forState:normal];
    [button17 setTitleColor:black forState:normal];
    [button17 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button17.titleLabel.font = [UIFont systemFontOfSize:30];
    button17.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    button17.contentEdgeInsets = UIEdgeInsetsMake(0, 41, 0, 0);
    button17.layer.borderColor = black.CGColor;
    button17.layer.borderWidth = 0.5;
    button17.tag = 0;
    [self.view addSubview:button17];
    
    UIButton *button18 = [[UIButton alloc] initWithFrame:CGRectMake(187.5, 573.6, 93.75, 93.4)];
    button18.backgroundColor = gray;
    [button18 setTitle:@"." forState:normal];
    [button18 setTitleColor:black forState:normal];
    [button18 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button18.titleLabel.font = [UIFont boldSystemFontOfSize:30];
    button18.layer.borderColor = black.CGColor;
    button18.layer.borderWidth = 0.5;
    button18.tag = 107;
    [self.view addSubview:button18];
    
    UIButton *button19 = [[UIButton alloc] initWithFrame:CGRectMake(281.25, 573.6, 93.75, 93.4)];
    button19.backgroundColor = orange;
    [button19 setTitle:@"=" forState:normal];
    [button19 setTitleColor:white forState:normal];
    [button19 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button19.titleLabel.font = [UIFont systemFontOfSize:40];
    button19.layer.borderColor = black.CGColor;
    button19.layer.borderWidth = 0.5;
    button19.tag = 108;
    [self.view addSubview:button19];
    
    
    
    [button1  addTarget:self action:@selector(operatorDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button2  addTarget:self action:@selector(operatorDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button3  addTarget:self action:@selector(operatorDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button4  addTarget:self action:@selector(operatorDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button5  addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button6  addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button7  addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button8  addTarget:self action:@selector(operatorDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button9  addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button10 addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button11 addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button12 addTarget:self action:@selector(operatorDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button13  addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button14  addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button15  addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button16  addTarget:self action:@selector(operatorDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button17  addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button18  addTarget:self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [button19  addTarget:self action:@selector(equButtonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    
   
    
    NSMutableArray *array1 = [[NSMutableArray alloc] init];
    NSMutableArray *array2 = [[NSMutableArray alloc] init];
    self.array1 =array1;
    self.array2 =array2;
    
    
    

    
}

- (void)buttonDidClick:(UIButton *)sender {
    
    if (sender.tag < 10 || sender.tag == 107) {
        if (self.operator.length == 0) {
            if (sender.tag == 107) {
                if ([self.array1 containsObject:@"."]) {
                    [self.array1 addObject:@""];
                }else {
                    [self.array1 addObject:@"."];
                }
            } else {
                [self.array1 addObject:[NSString stringWithFormat:@"%ld",sender.tag]];
            }
            
            self.array1 = [[self arrayWithoutPreZero:self.array1] mutableCopy];
            NSString *string = [self.array1 componentsJoinedByString:@""];
            self.titleLabel.text = string;
            
        }else {
            if (sender.tag == 107) {
                if ([self.array2 containsObject:@"."]) {
                    [self.array2 addObject:@""];
                }else {
                    [self.array2 addObject:@"."];
                }
             }else {
                [self.array2 addObject:[NSString stringWithFormat:@"%ld",sender.tag]];
             }
            self.array2 = [[self arrayWithoutPreZero:self.array2] mutableCopy];
            NSString *string = [self.array2 componentsJoinedByString:@""];
            self.titleLabel.text = string;
                
        }
    }
  
}




- (NSArray *)arrayWithoutPreZero:(NSArray *)array {
    
    if ([array count] == 0) {
        return nil;
    }
    
    if ([array count] == 1 && ![array[0] isEqualToString:@"."]) {
        return [array copy];
    }
    
    if ([array[0] isEqualToString:@"."]) {
        
        return @[@"0", @"."];
    }
    
    
    NSMutableArray *result = [NSMutableArray arrayWithArray:array];
    
    [array enumerateObjectsUsingBlock:^(NSString  * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSString *next = [self safeObjectWithArray:result atIndex:idx + 1];
        
        if ([obj isEqualToString:@"0"] && ![@"." isEqualToString:next]) {
              [result removeObject:obj];
        } else {
            *stop = YES;
        }
    }];

    return [NSArray arrayWithArray:result];
    
}

- (id)safeObjectWithArray:(NSArray *)array atIndex:(NSInteger)index {
    if ([array count] > index) {
        return array[index];
    }
    return nil;
}
 
 
- (void)operatorDidClick:(UIButton *)sender {

    if (sender.tag == 103) {
        self.operator = @"/";
        
    }else if (sender.tag == 104) {
        self.operator = @"*";
        
    }else if (sender.tag == 105){
        self.operator = @"-";
        
    }else if (sender.tag == 106){
        self.operator = @"+";
        
    }else if (sender.tag == 101){
//         self.operator = @"+/-";
        if (self.operator.length == 0) {
            self.isFushu1 = !self.isFushu1;
            NSString *string = [self.array1 componentsJoinedByString:@""];
            self.titleLabel.text = [self stringWithString:string isFushu:self.isFushu1];
        } else {
            NSString *string = [self.array2 componentsJoinedByString:@""];
            self.isFushu2 = !self.isFushu2;
            self.titleLabel.text = [self stringWithString:string isFushu:self.isFushu2];
        }
    }else if (sender.tag == 100){
        self.operator = @"";
        [self.array1 removeAllObjects];
        [self.array2 removeAllObjects];
        self.titleLabel.text = @"0";
        self.isFushu1 = NO;
        self.isFushu2 = NO;
    }else if (sender.tag == 102){
       // self.operator = @"%";
        NSString *str1 = [self.array1 componentsJoinedByString:@""];
        NSString *str2 = [[NSString alloc] init];
        CGFloat intString1 = [str1 floatValue];
        CGFloat intString2 = [str2 floatValue];
        intString2 = intString1 / 100;
        self.titleLabel.text = [NSString stringWithFormat:@"%f",intString2];
        
    }
}


- (NSString *)stringWithString:(NSString *)string isFushu:(BOOL)isFushu {

    return isFushu ? [NSString stringWithFormat:@"-%@",string] : string;
}




- (void)equButtonDidClick:(UIButton *)sender {
    
    NSString *result;
    
    if ([self.operator isEqualToString:@"+"]) {
        // 转换 array1 array2 为数字，然后相加，并 self.titleLabel.text = 结果
        NSString *str1 = [self.array1 componentsJoinedByString:@""];
        NSString *str2 = [self.array2 componentsJoinedByString:@""];
        str1 = self.isFushu1 ? [NSString stringWithFormat:@"-%@",str1] : str1;
        str2 = self.isFushu2 ? [NSString stringWithFormat:@"-%@",str2] : str2;
        
        NSString *str3 = [[NSString alloc] init];
        CGFloat intString1 = [str1 floatValue];
        CGFloat intString2 = [str2 floatValue];
        CGFloat intString3 = [str3 floatValue];
        intString3 = intString1 + intString2;
        result = [NSString stringWithFormat:@"%f",intString3];
        
        
    } else if ([self.operator isEqualToString:@"-"]) {
         // 转换 array1 array2 为数字，然后相-，并 self.titleLabel.text = 结果
        NSString *str1 = [self.array1 componentsJoinedByString:@""];
        NSString *str2 = [self.array2 componentsJoinedByString:@""];
        str1 = self.isFushu1 ? [NSString stringWithFormat:@"-%@",str1] : str1;
        str2 = self.isFushu2 ? [NSString stringWithFormat:@"-%@",str2] : str2;
        
        NSString *str3 = [[NSString alloc] init];
        CGFloat intString1 = [str1 floatValue];
        CGFloat intString2 = [str2 floatValue];
        CGFloat intString3 = [str3 floatValue];
        intString3 = intString1 - intString2;
        result = [NSString stringWithFormat:@"%f",intString3];
        
        
    }else if ([self.operator isEqualToString:@"*"]){
        NSString *str1 = [self.array1 componentsJoinedByString:@""];
        NSString *str2 = [self.array2 componentsJoinedByString:@""];
        str1 = self.isFushu1 ? [NSString stringWithFormat:@"-%@",str1] : str1;
        str2 = self.isFushu2 ? [NSString stringWithFormat:@"-%@",str2] : str2;
        NSString *str3 = [[NSString alloc] init];
        CGFloat intString1 = [str1 floatValue];
        CGFloat intString2 = [str2 floatValue];
        CGFloat intString3 = [str3 floatValue];
        intString3 = intString1 * intString2;
        
        if (intString1 == 0 || intString2 == 0){
            intString3 = 0;
        }
        result = [NSString stringWithFormat:@"%f",intString3];
        
        
    }else if ([self.operator isEqualToString:@"/"]){
        NSString *str1 = [self.array1 componentsJoinedByString:@""];
        NSString *str2 = [self.array2 componentsJoinedByString:@""];
        str1 = self.isFushu1 ? [NSString stringWithFormat:@"-%@",str1] : str1;
        str2 = self.isFushu2 ? [NSString stringWithFormat:@"-%@",str2] : str2;
        NSString *str3 = [[NSString alloc] init];
        CGFloat intString1 = [str1 floatValue];
        CGFloat intString2 = [str2 floatValue];
        CGFloat intString3 = [str3 floatValue];
        
        
        if (intString2 == 0){
            result = [NSString stringWithFormat:@"错误"];
        }else {
            intString3 = intString1 / intString2;
        result = [NSString stringWithFormat:@"%f",intString3];
    }
}
    self.titleLabel.text = [self noTailZeroWithString:result];
    self.operator = @"";
    [self.array1 removeAllObjects];
    [self.array2 removeAllObjects];
    self.isFushu1 = NO;
    self.isFushu2 = NO;
    
    
   
}

- (NSString *)noTailZeroWithString:(NSString *)string {
    

    
    NSMutableString *mutableString = [NSMutableString stringWithString:string];
 
    while ([mutableString hasSuffix:@"0"] || [mutableString hasSuffix:@"."]) {
        if (![mutableString containsString:@"."]) {
            break;
        }
        [mutableString deleteCharactersInRange:NSMakeRange(mutableString.length - 1, 1)];
    }
    
    return [mutableString copy];
    
}




    









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
