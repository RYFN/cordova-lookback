var exec = require('cordova/exec');

var Lookback = {
	setupWithAppToken:function(token){
		exec(null, null, "Lookback", "setupWithAppToken", [token]);
	}
};

module.exports = Lookback;