#import "Configuration.h"

NSString *const ConfigurationPlistKey = @"ConfigurationPlist";

@interface Configuration ()
@property (nonatomic, readwrite, strong) NSMutableDictionary *store;
@end

@implementation Configuration

+ (instancetype)defaultConfiguration;
{
    return [[self alloc] init];
}

- (id)init;
{
    if (self = [super init]) {
        [self registerDefaultConfiguration];
    }

    return self;
}

- (id)settingForKey:(NSString *)key;
{
    return self.store[key];
}

- (void)registerDefaultConfiguration;
{
    self.store = [[self loadDefaults] mutableCopy];
}

- (NSDictionary *)loadDefaults;
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *plistName = [bundle objectForInfoDictionaryKey:ConfigurationPlistKey];
    NSString *plistPath = [bundle pathForResource:plistName ofType:@"plist"];
    return [NSDictionary dictionaryWithContentsOfFile:plistPath];
}

@end
