var exec = require('cordova/exec');

var Lookback = {
	setupWithAppToken:function(token){
		exec(null, null, "Lookback", "setupWithAppToken", [token]);
	},
	shakeToRecord:function(shakeToRecord){
		exec(null, null, "Lookback", "shakeToRecord", [shakeToRecord]);
	},
	userIdentifier:function(identifier){
		exec(null, null, "Lookback", "userIdentifier", [identifier]);
	}
};

module.exports = Lookback;