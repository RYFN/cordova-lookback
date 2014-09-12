Cordova Lookback Plugin
=======================

Unofficial Cordova plugin for http://lookback.io (v0.6.4)

Methods will be accessable on the window.Lookback object.

Utilizes Lookback HD - NOT suitable for deployment to app store, use for testing only.

Install
-------

Install with `cordova plugin add git-repo-goes-here`

Currently supported functions
-----------------------------

### setupWithAppToken
call this first, once, and after device ready.
### shakeToRecord
true|false
### userIdentifier
Some unique per-device identifier, or set to `deviceName` to use the currentDevice name as assigned by iOS. ([[UIDevice currentDevice] name]);

Example
-------

    document.addEventListener('deviceready', function(){
            window.Lookback.setupWithAppToken('your-app-token');
            window.Lookback.shakeToRecord(true);
            window.Lookback.userIdentifier('some-id-here');
            // or 
            //window.Lookback.userIdentifier('deviceName');
        }, false);




License
-------

Use of lookback.io Framework subject to available on http://lookback.io

