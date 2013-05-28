winston = require 'winston'
fs = require 'fs'
winston.remove(winston.transports.Console)
msg = "110002,1369227603,1.204.21.58,50B7C3069038,A6E3D0E1B8AA5EC6D2BE1F02700473FC,w_da_tips_01:4895#515|w_da_tips_02:3206#515|w_da_tips_03:4895#515|w_da_tips_04:-#-|w_da_tips_05:-#-|w_da_tips_21:-#-|w_da_tips_22:-#-|w_da_tips_23:-#-|w_da_tips_24:-#-|w_da_tips_25:-#-|w_da_tips_26:-#-|w_da_tips_27:-#-|w_da_tips_28:-#-|w_da_tips_29:-#-|w_da_tips_30:-#-,-,-,3,-,-,84338281-c2df-11e2-b000-9bf1177f91a2,\"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET4.0E; .NET4.0C)\""
#st = fs.createWriteStream('./speed_test.log')
winston.add(winston.transports.File, { filename: '.speed_test2.log', json:true})
#winston.add(winston.transports.File, { stream: st , json:false, timestamp: false})
max = 100000
console.time('write')
while max-- > 0
	winston.log('info',msg)
	#st.write(msg+'\n')
console.timeEnd('write')