//
//  ELNLabel.m
//  FlyLabel
//
//  Created by GZ on 15/12/14.
//  Copyright (c) 2015年 G.Z All rights reserved.
//

#import "ELNLabel.h"

CGPoint startP;//记录开始触摸时点的坐标
CGPoint moveP;//移动过程中某个点的坐标
CGPoint centerP;//记录一开始的视图中心点

@implementation ELNLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.userInteractionEnabled = YES;
        
        //表示视图是否可以与用户进行交互 UIView的对象默认是yes label默认no
        
    }
    return self;
}

#pragma mark -- 触摸开始时调用
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    //开始触摸时 应该获取中心点与起点坐标
    
    //记录中心点
    centerP = self.center;
    
    
    //NSSet 手势容器类 当用户对视图进行一些触摸（单击 双击 长按）这些动作都会被系统捕获 装入当前传过来的touches
    //如果需要取出容器中的手势 要使用UITouch类的对象（表示手势）来接收
    
    UITouch *touch = [touches anyObject];
    //只要有手势传过来就接收
    
    startP = [touch locationInView:self.window];
    //获取手势点击的位置（相对于当前视图加载的窗体）
    //坐标的参考系 是相对于加载的窗体 而不是父视图
    
    
}

#pragma mark -- 触摸移动时调用
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    //获取移动中的某个点位置 求出移动的差值 修改中心点
    
    UITouch *touch = [touches anyObject];
    moveP = [touch locationInView:self.window];
    
    float x = moveP.x - startP.x;
    float y = moveP.y - startP.y;
    
    self.center = CGPointMake(centerP.x + x, centerP.y + y);
    

}

#pragma mark -- 触摸正常结束时调用
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    self.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2,[UIScreen mainScreen].bounds.size.height/2);



}

#pragma mark -- 触摸意外结束时调用
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    self.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2,[UIScreen mainScreen].bounds.size.height/2);


}
@end
