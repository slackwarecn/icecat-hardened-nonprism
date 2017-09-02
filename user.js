// Make it run in private browsing, no third-party cookie and socks proxy enabled.

user_pref("browser.privatebrowsing.autostart", true);

user_pref("network.cookie.cookieBahavior", 1);
user_pref("network.cookie.lifetimePolicy", 2);
user_pref("network.cookie.prefsMigrated", true);
user_pref("network.predictor.cleaned-up", true);
user_pref("network.proxy.no_proxies_on", "localhost, 127.0.0.1");
user_pref("network.proxy.socks", "127.0.0.1");
user_pref("network.proxy.socks_port", 1080);
user_pref("network.proxy.socks_remote_dns", true);
user_pref("network.proxy.type", 1);

user_pref("noscript.secureCookies", true);
user_pref("noscript.secureCookies.perTab", true);
user_pref("noscript.secureCookies.recycle", true);
