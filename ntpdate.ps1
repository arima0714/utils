# 管理者権限で実行すること
$ntpdatestring = (new-object System.Net.WebClient).DownloadString("http://ntp-a1.nict.go.jp/cgi-bin/time").Replace(" JST", " +0900").Trim()
$datetime = [DateTime]::ParseExact($ntpdatestring, "ddd MMM dd HH:mm:ss yyyy zzzz", [Globalization.CultureInfo]::CreateSpecificCulture("en-US"))

set-date $datetime

