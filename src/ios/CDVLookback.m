#import "CDVLookback.h"
#import <Lookback/Lookback.h>

@implementation CDVLookback

- (void)setupWithAppToken:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* token = [command.arguments objectAtIndex:0];
    NSLog(@"setting up app with token...");

    if (token != nil && [token length] > 0) {
        [Lookback_Weak setupWithAppToken:token];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:token];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end