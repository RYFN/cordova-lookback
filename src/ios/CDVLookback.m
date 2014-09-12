#import "CDVLookback.h"
#import <Lookback/Lookback.h>

@implementation CDVLookback

- (void)setupWithAppToken:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* token = [command.arguments objectAtIndex:0];

    if (token != nil && [token length] > 0) {
        [Lookback_Weak setupWithAppToken:token];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)shakeToRecord:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    BOOL shakeToRecord = [[command.arguments objectAtIndex:0] boolValue];
    [Lookback_Weak lookback].shakeToRecord = shakeToRecord;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)userIdentifier:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* identifier = [command.arguments objectAtIndex:0];

    if (identifier != nil && [identifier length] > 0) {

        if([identifier isEqualToString:@"deviceName"]){
            [Lookback_Weak lookback].userIdentifier = [[UIDevice currentDevice] name];
        } else {
            [Lookback_Weak lookback].userIdentifier = identifier;
        }

        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end