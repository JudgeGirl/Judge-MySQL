## README ##

請確定 `backupJudgeGirl.sh` 中的路徑資料夾存在與否、登入帳號以及密碼。

### 安裝 ###

安裝位置與權限設置如下範例

```
root@supermicro:/home/judgesister# ls -l
-rwx------   1 root root       442 Jan 24 10:44 backupJudgeGirl
```

#### 增加定時備份 ####

```
$ crontab -e
```

在最後幾行增加內容如下

```
# m h  dom mon dow   command

00 00 * * * /usr/sbin/ntpdate time.stdtime.gov.tw
00 22 * * * /home/judgesister/backupJudgeGirl
```

* 凌晨更新系統時間 `00 00 * * * /usr/sbin/ntpdate time.stdtime.gov.tw`
* 晚間十點備份資料庫 `00 22 * * * /home/judgesister/backupJudgeGirl`