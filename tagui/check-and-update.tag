// This is a RPA flow for TagUI

https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver

read //*[@id="downloads-channel"]/div/div[1]/div[1]/div[2]/p[3]/a[1]/@href to linkStableUrl
version = linkStableUrl.split('/')[3]
echo `version`
js runCmd = "C:\\git\\WebDriver.EdgeChromiumDriver\\getPackage.bat " + version
echo running `runCmd`
run `runCmd`

echo run_result