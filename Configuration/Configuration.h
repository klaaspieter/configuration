@import Foundation;

@protocol Configuration <NSObject>
@required
- (id)settingForKey:(NSString *)key;
@end

extern NSString *const ConfigurationPlistKey;

@interface Configuration : NSObject <Configuration>

+ (instancetype)defaultConfiguration;
- (id)settingForKey:(NSString *)key;

@end
