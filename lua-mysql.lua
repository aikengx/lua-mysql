DBNAME = "asterisk"
DBUSER = "root"
DBPASSWORD = "123456"
DBHOST = "127.0.0.1"
DBPORT = "3306"
luasql = require "luasql.mysql"
env = luasql.mysql()
con = env:connect(DBNAME, DBUSER, DBPASSWORD, DBHOST, DBPORT)
cur = con:execute('SELECT SYSDATE();')
print(env,con,cur)
row = cur:fetch()
DATE = row
print ("El SYSDATE en la BD es => " .. DATE)
cur:close()
con:close()
env:close()
