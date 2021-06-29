#import <UIKit/UIKit.h>

@interface SBHWidgetContainerView : UIView
@property (nonatomic,copy) NSString * applicationName;
@end

%hook SBHWidgetContainerView
-(void)layoutSubviews{
  %orig;
  if ([self.applicationName containsString:@"⠀"]){
    [self setHidden:YES];
  }
}
%end
