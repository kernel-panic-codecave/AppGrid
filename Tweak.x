#import <UIKit/UIKit.h>
%group enabled
    %hook SBAppSwitcherSettings
        - (void)setSwitcherStyle:(long long)arg1 {
            arg1 = 2;
            %orig;
        }
    %end
%end
%ctor {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.withertech.appgridprefs"];
    id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
    if ([isEnabled isEqual:@1]) {
        %init(enabled)
    }
}
