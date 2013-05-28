winston-performance-test
========================

Winston (A multi-transport async logging library for node.js).
https://github.com/flatiron/winston

winston 性能测试
 
## Preparation

	npm install winston
	npm install cofee-script
	
	coffee winston-performance-test.coffee

## Resluts 
 
server:　虚拟机 512M内存，1颗CPU（1核）  
 
连续写入 100,000条记录 ，每条记录554Bytes  
winston:   阻塞耗时 3448~3697ms (JSON), 2539~2901ms (text)  
fs stream：阻塞耗时 528~570ms (text)  
winston + fs stream方式：阻塞耗时 2901~3013ms (text)  
 
________________________________________
陈建斌
