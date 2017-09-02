## 加固你的Icecat

**icecat-hardened**

> 本腳本不會安裝[icecat](https://slackbuilds.org/repository/14.2/network/icecat)本身。本腳本亦目測你在使用x86_64的Slackware 14.2 或以上（已在 -current 上測試通過）。

### 加固什麼？

- 用firejail沙盒啓動（因此你需要先安裝[firejail](https://slackbuilds.org/repository/14.2/system/firejail) <- 安裝腳本在這裏。
- 一些隐私加强的设置（如 cookie什么的）
- 下載並安裝幾個保護隱私的必備 add-on（插件）：（然而后来发现不是所有插件都能以这种方式安装；你们只能手动安装其他的插件了）
	- Noscript
	- (icecat 52 已自帶的 httpseverywhere)


**不必用root執行該腳本**

_就做了這麼一點小事，謝謝大家（其實還是挺方便部署的，給別人安裝就不用一項一項操作了）_

<hr>

This is a script which enhances icecat: to be started under firejail; to be equipped with add-ons of Noscripts, which help to protect the user's privacy. (a later study found that not every addon can be installed under such way. So you may install the addons you need by your hand :)

You sould have icecat and firejail installed.

**Note**: It is now required to use icecat-hardened or icecat binaries separately. They cannot run at the same time, but can be ran interchangebly. Additionally, some user.js preferences may be overriden in your normal profile due to Mozilla bug #1322624. You can re-enable these in about:config.

You donot need to run it as root.

**CONTACT**: 
[MDrights](https://github.com/mdrights)
mdrights at tutanota dot de
