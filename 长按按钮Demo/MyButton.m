//
//  MyButton.m
//  长按按钮Demo
//
//  Created by 孙云 on 15/11/11.
//  Copyright © 2015年 haidai. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

-(id)init
{
    self = [super init];
    if (self)
    {
        [self loadGesture];
    }
    return self;
}
/**
 *  代码实例化控件是走的构造方法
 *
 *  @param frame <#frame description#>
 *
 *  @return <#return value description#>
 */
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self loadGesture];
    }
    return self;
}
/**
 *  nib加载的时候走的控件的加载方法
 *
 *  @param aDecoder <#aDecoder description#>
 *
 *  @return <#return value description#>
 */
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self loadGesture];
    }
    return self;
}
/**
 *  加载手势方法
 */
-(void)loadGesture
{
    //加载一个长按手势
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self
                                                                                           action:@selector(choose:)];
    longPress.minimumPressDuration = 2;
    [self addGestureRecognizer:longPress];

}
/**
 *  手势动作
 */
-(void)choose:(UILongPressGestureRecognizer *)longPress
{
    if(longPress.state == UIGestureRecognizerStateBegan)
    {
        NSLog(@"111");
        if (self.selected)
        {
            [UIView animateWithDuration:0.5 animations:^
             {
                 self.backgroundColor = [UIColor yellowColor];
             }];
            self.selected = NO;
            return;
        }
        else
            [UIView animateWithDuration:0.5 animations:^
             {
                 self.backgroundColor = [UIColor blackColor];
                 self.selected = YES;
                 return ;
                 
             }];
 
    }
   
}
////允许多个手势
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
//{
//    return YES;
//}
@end
