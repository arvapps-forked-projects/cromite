# Features

#### From Bromite
* customizable adblock filters via user-provided URL (see https://www.bromite.org/custom-filters) (deprecated, replaced by adblock plus)
* automatically updated adblock filters
* remove click-tracking and AMP from search results
* DNS-over-HTTPS support with any valid IETF DoH endpoint
* always-incognito mode
* disable all field trials permanently
* disable smart search by default, allow web search from incognito mode
* always-visible cookies, javascript and ads site settings from address bar popup
* remove Play integration binary blobs
* ~use [CFI](https://en.wikipedia.org/wiki/Control-flow_integrity) on all architectures except x86 and Windows~ dropped from v117 see https://github.com/uazo/cromite/discussions/292
* enable trivial auto var init
* disable media router and remoting by default
* disable dynamic module loading
* show warnings for TLSv1.0/TLSv1.1 pages
* enable site-per-process isolation for all devices with memory > 1GB
* [proxy configuration page](https://github.com/bromite/bromite/wiki/ProxyConfiguration) with PAC and custom proxy lists support
* settings to disable custom intents and clear session on exit
* flags to toggle anti-fingerprinting mitigations for canvas, audio, client rects, webGL and sensor APIs (see full list below for all the new flags)
* use frozen User-Agent to conceal real model and browser version
* privacy enhancement patches from [Iridium](https://iridiumbrowser.de/), [Inox patchset](https://github.com/gcarq/inox-patchset), [Brave](https://brave.com/) and [ungoogled-chromium](https://github.com/Eloston/ungoogled-chromium) projects
* security enhancement patches from [GrapheneOS](https://github.com/GrapheneOS) project
* reduced referer granularity
* block gateway attacks via websockets (partial fix, see [this upstream issue](https://bugs.chromium.org/p/chromium/issues/detail?id=590714))
* use 64-bit ABI for webview processes
* make all favicon requests on-demand ([supercookie](https://supercookie.me/) mitigation)
* enable all network isolation features (`PartitionConnectionsByNetworkIsolationKey`, `PartitionHttpServerPropertiesByNetworkIsolationKey`, `SplitHostCacheByNetworkIsolationKey`, `AppendFrameOriginToNetworkIsolationKey`, `SplitCacheByNetworkIsolationKey`, `UseRegistrableDomainInNetworkIsolationKey`, `PartitionSSLSessionsByNetworkIsolationKey`, `PartitionExpectCTStateByNetworkIsolationKey`, `PartitionDomainReliabilityByNetworkIsolationKey`)
* ignore enterprise policies that disallow secure DNS
* ask permission to play protected media
* disable the DIAL repeating discovery
* disable RTCGetCurrentBrowsingContextMedia by default
* disable FLoC and privacy sandbox by default
* disable feeds
* disable reporting of certificate errors
* use pre-defined phone model for client hints and Javascript
* allow forcing external links to open in incognito
* disable AGSA by default
* flag to enable Certificate Transparency
* allow adding search engines from incognito mode
* disable predictors
* disable supervised users
* disable safety check
* disable capability to block `view-source:` URLs
* disable `SegmentationPlatformFeature`, `OptimizationHints`, client hint headers
* disable `AsyncDNS` by default
* customize history expiration threshold
* disable idle detection
* HTTPS-only mode enabled by default
* disable TLS resumption by default
* strict site isolation and strict origin isolation
* partition blobs by top frame URL

#### Cromite-specific features

* Built-in Adblock Plus [patch](https://github.com/uazo/cromite/blob/master/build/patches/Eyeo-Adblock-Remove-Privacy-Issues.patch) (issue [84](https://github.com/uazo/bromite-buildtools/issues/84))
* policy browser patch for the use of enterprise policy [patch](https://github.com/uazo/cromite/blob/master/build/patches/add-browser-policy.patch) (issue [191](https://github.com/uazo/bromite-buildtools/issues/191))
  - deactivate safe browsing and extended reporting
  - disabled scroll-to-text-fragment
  - disabled contextual search
  - disabled media router
  - disabled url keyed anonymized data collection
  - disabled translate
  - disabled network prediction
  - disabled sign-in
  - disabled google search side panel
  - disabled automatic https upgrades
* internal firewall to block all unauthorised calls made from the browser [patch](https://github.com/uazo/cromite/blob/master/build/patches/Internal-firewall.patch) (issue [147](https://github.com/uazo/bromite-buildtools/issues/147))
* show warnings on downloads over HTTP [patch](https://github.com/uazo/cromite/blob/master/build/patches/Show-warnings-on-downloads-over-HTTP.patch)
* lock profile cookie database [patch](https://github.com/uazo/cromite/blob/master/build/patches/Lock-Profile-Cookie-Database.patch)
* remove support for device memory and cpu recovery [patch](https://github.com/uazo/cromite/blob/master/build/patches/Remove-support-for-device-memory-and-cpu-recovery.patch)
* disable speechSynthesis getVoices API [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-speechSynthesis-getVoices-API.patch)
* viewport Protection patch [patch](https://github.com/uazo/cromite/blob/master/build/patches/Viewport-Protection-flag.patch)
* deprecate Data URL in SVGUseElement [patch](https://github.com/uazo/cromite/blob/master/build/patches/Deprecate-Data-URL-in-SVGUseElement.patch)
* disallow Android App Scheme as referrer [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disallow-Android-App-Scheme-as-referrer.patch)
* disable Compression Dictionary Transport [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-Compression-Dictionary-Transport.patch)
* disable PrivateStateTokens API [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-PrivateStateTokens-API.patch)
* disable GSA by default [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-GSA-by-default.patch)
* disable GetInstalledRelatedApps API [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-GetInstalledRelatedApps-API.patch)
* disable FirstPartySets and StorageAccessAPI [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-FirstPartySets-and-StorageAccessAPI.patch)
* disable WebGPU [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-WebGPU.patch)
* disable GamePad API [patch](https://github.com/uazo/cromite/blob/master/build/patches/Add-a-flag-to-disable-GamePad-API.patch)
* remove external https connection from chrome://discards [patch](https://github.com/uazo/cromite/blob/master/build/patches/Remove-https-connection-from-chrome-discards.patch)
* links the use of screen.isExtended to WINDOW_MANAGEMENT permission granted by user [patch](https://github.com/uazo/cromite/blob/master/build/patches/Multi-Screen-Window-Placement-API-fix.patch)
* clear CORS Preflight Cache on clearing data [patch](https://github.com/uazo/cromite/blob/master/build/patches/Clear-CORS-Preflight-Cache-on-clearing-data.patch)
* remove auth header upon cross origin redirect [patch](https://github.com/uazo/cromite/blob/master/build/patches/Remove-auth-header-upon-cross-origin-redirect.patch)
* disable SHA1 Server Signature [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-SHA1-Server-Signature.patch)
* remove detection of captive portals [patch](https://github.com/uazo/cromite/blob/master/build/patches/Remove-detection-of-captive-portals.patch)
* disable devtools remote and custom protocols [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-devtools-remote-and-custom-protocols.patch)
* enable Document Open Inheritance Removal [patch](https://github.com/uazo/cromite/blob/master/build/patches/Enable-Document-Open-Inheritance-Removal.patch)
* warning message for unsupported hardware aes [patch](https://github.com/uazo/cromite/blob/master/build/patches/Warning-message-for-unsupported-hardware-aes.patch)
* partition HSTS cache by NAK [patch](https://github.com/uazo/cromite/blob/master/build/patches/Partition-HSTS-cache-by-NAK.patch)
* disable password leak detector [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-privacy-issues-in-password-manager.patch)
* keyboard protection flag [patch](https://github.com/uazo/cromite/blob/master/build/patches/Keyboard-protection-flag.patch)
* disable csp reports [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-csp-reports.patch)
* add setting to clear data on exit [patch](https://github.com/uazo/cromite/blob/master/build/patches/Add-setting-to-clear-data-on-exit.patch)
* disable visited pseudo class [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-visited-pseudo-class.patch)
* disable BackForwardCache [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-BackForwardCache.patch)
* disable FedCm [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-FedCm.patch)
* partitioning all cookies by top frame domain [patch](https://github.com/uazo/cromite/blob/master/build/patches/Partitioning-all-cookies-by-top-frame-domain.patch)
* fingerprint mitigation for AudioBuffer and AnalyserNode [patch](https://github.com/uazo/cromite/blob/master/build/patches/AudioBuffer-AnalyserNode-fp-mitigations.patch)

##### from [116.0.5845.111](https://github.com/uazo/cromite/issues/205#issuecomment-1690216310)
* Disable PartnerCustomizations [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-PartnerCustomizations.patch) [#202](https://github.com/uazo/cromite/issues/202)
* Add option to disable snapshots [patch](https://github.com/uazo/cromite/blob/master/build/patches/Add-option-to-disable-snapshots.patch) [#201](https://github.com/uazo/cromite/issues/201)
* Enable Android Dynamic Performance Framework on renderer [patch](https://github.com/uazo/cromite/blob/master/build/patches/Enable-Android-Dynamic-Performance-Framework.patch)

##### from [117.0.5938.63](https://github.com/uazo/cromite/issues/293)
* Added support for blocking in service workers in AdblockPlus #254 [patch](https://github.com/uazo/cromite/blob/master/build/patches/AdblockPlus-add-blocking-in-service-workers.patch)
* Drop CFI support (see https://github.com/uazo/cromite/discussions/292)
* Enabled Improved Bookmarks UI by default [patch](https://github.com/uazo/cromite/blob/master/build/patches/Enable-ImprovedBookmarks-by-default.patch)
* Removed Google private API from accounts.google.com [patch](https://github.com/uazo/cromite/blob/master/build/patches/Remove-GoogleAccountsPrivateApiHost.patch)

##### from [117.0.5938.140](https://github.com/uazo/cromite/issues/349#issuecomment-1740388786)
* Partition MediaDeviceId by default [patch](https://github.com/uazo/cromite/blob/master/build/patches/Partition-MediaDeviceId-by-default.patch)

##### from [118.0.5993.118](https://github.com/uazo/cromite/issues/458#issuecomment-1780511486)
* Add support for jpeg xl [patch](https://github.com/uazo/cromite/blob/master/build/patches/Add-support-to-jxl.patch) https://github.com/uazo/cromite/issues/351
* Disable prefers-reduced-transparency media query [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-prefers-reduced-transparency-media-query.patch) https://github.com/uazo/cromite/issues/437
* Show full urls for bookmark [patch](https://github.com/uazo/cromite/blob/master/build/patches/Show-full-urls-for-bookmark.patch) https://github.com/uazo/cromite/issues/434

##### from [119.0.6045.106](https://github.com/uazo/cromite/issues/484#issuecomment-1788744844)
* Always clear js and wasm code cache at startup
* Block Intents While Locked [patch](https://github.com/uazo/cromite/blob/master/build/patches/Block-Intents-While-Locked.patch)
* Keep Manta Service Disabled [patch](https://github.com/uazo/cromite/blob/master/build/patches/Keep-Manta-Service-Disabled.patch)
* (Only windows) Hide the presence of the webcam if the user has not given permission #480

##### from [119.0.6045.124](https://github.com/uazo/cromite/issues/484#issuecomment-17887448441)
* Disable Service and Shared workers on 3P iframe by default [patch](https://github.com/uazo/cromite/commit/8f293b2c9927f1185bbf95e11a280898fe9baa9a)



##### from [119.0.6045.160](https://github.com/uazo/cromite/issues/526#issuecomment-1814305477)
* Always allow inspect fallback [patch](https://github.com/uazo/cromite/blob/master/build/patches/Always-allow-inspect-fallback.patch)

##### from [120.0.6099.63](https://github.com/uazo/cromite/issues/587#issuecomment-1844897172)
* Improve the browser sandbox by using the new flags on android [patch](https://github.com/uazo/cromite/blob/master/build/patches/Improve-the-browser-sandbox.patch)

##### from [120.0.6099.199](https://github.com/uazo/cromite/issues/657#issuecomment-1877090218)
* Chrome web store protection [patch](https://github.com/uazo/cromite/blob/master/build/patches/Chrome-web-store-protection.patch)
* Enable search engine settings desktop ui in android [patch](https://github.com/uazo/cromite/blob/master/build/patches/Enable-search-engine-settings-desktop-ui.patch)

##### from [120.0.6099.216](https://github.com/uazo/cromite/issues/684#issuecomment-1885129850)
* Customize selection popup [patch](https://github.com/uazo/cromite/blob/master/build/patches/Customize-selection-popup.patch)
* Disable Android AppRestrictions [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-Android-AppRestrictions.patch)
* Add new option in the developer tools settings for deactivating the debugger javascript statement [patch](https://github.com/uazo/cromite/blob/master/build/patches/Enables-deactivation-of-the-js-debugger-statement.patch)

##### from [120.0.6099.217](https://github.com/uazo/cromite/issues/695#issuecomment-1892032626)
* Enable Gwp Asan in Android [patch](https://github.com/uazo/cromite/blob/master/build/patches/Enable-gwp-asan-on-Android.patch)

##### from [120.0.6099.230](https://github.com/uazo/cromite/issues/720#issuecomment-1898490097)
* Disable minikin engine

##### from [121.0.6167.101](https://github.com/uazo/cromite/issues/743#issuecomment-1909799070)
* Disable Read Aloud by default [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-Read-Aloud-by-default.patch)
* Disable Discount Info Api 

##### from [121.0.6167.164](https://github.com/uazo/cromite/issues/784#issuecomment-1933505763)
* Ability to block all popups per site [patch](https://github.com/uazo/cromite/blob/master/build/patches/Change-popup-site-setting.patch)

##### from [122.0.6261.70](https://github.com/uazo/cromite/issues/825#issuecomment-1969089406)
* Expose in settings and activate by default NewTabPage in startup [patch](https://github.com/uazo/cromite/blob/master/build/patches/Show-NTP-at-startup.patch)
* Enable percent based scrolling on Windows [patch](https://github.com/uazo/cromite/blob/master/build/patches/Enable-percent-based-scrolling-on-Windows.patch)
* Disable Compose by default [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-Compose-feature.patch)
* Offline autofetch by default [patch](https://github.com/uazo/cromite/blob/master/build/patches/Disable-offline-autofetch-flag.patch)

#### Windows Cromite-specific features

* enable Network Service Sandbox by default
* disable sharing hub
* disable search for image
* simpler logging to file
* disable TabHoverCard images
* enable File System Access blocklist
* enable HighEfficiencyMode by default
* disable annotates on downloads
* enabled pdf plugin by default

## Features not related to privacy

#### From Bromite
* browser automatic updates, enabled by default
* native Android autofill support
* import/export bookmarks
* bookmark all tabs from tabs regroup menu
* allow playing videos in background tabs and disable pause on switching tabs
* ~all codecs included (proprietary, open H.264 etc.)~ dropped from [121.0.6167.143](https://github.com/uazo/cromite/issues/764#issuecomment-1921713006) see https://github.com/uazo/cromite/issues/710
* [AV1 codec support](https://github.com/bromite/bromite/wiki/AV1-support)
* [dav1d](https://code.videolan.org/videolan/dav1d) decoder enabled by default
* built with official speed optimizations
* increase number of autocomplete matches from 5 to 10
* allow changing default download storage location
* do not ignore save prompt for users without SD cards
* disable articles and increase number of icons on new tab page
* adding an URL as bookmark will clear its blocked status for the NTP tiles
* history support in incognito mode
* view source of pages
* sticky desktop mode setting
* mobile/desktop user agent customization
* accessibility preference to force tablet UI
* use Alt+D to focus address bar
* allow sharing to Bromite
* UI for crash information collection
* allow OpenSearch search engine detection in incognito
* allow OpenSearch search engine detection with paths
* keyboard dictionary hints in address bar
* always allow `view-source:` URLs
* allow moving navigation bar to bottom
* add option to use home page as NTP

#### Cromite-specific features

* add setting in android to invert tap and long tap [patch](https://github.com/uazo/cromite/blob/master/build/patches/Add-setting-to-invert-tap-and-long-tap.patch)

You can inspect all functionality/privacy changes by reading the [patches](https://github.com/uazo/cromite/tree/master/build/patches)

### Flags

Flags which have been retired from upstream Chromium but are still available in Cromite.

* `#pull-to-refresh`
* `#enable-search-ready-omnibox`
* `#darken-websites-checkbox-in-themes-setting`
* `#simplified-ntp`, enabled by default
* `#enable-text-fragment-anchor`, disabled by default
* `#num-raster-threads`
* `#enable-image-reader`, enabled by default
* `#enable-tab-groups` and `#enable-tab-groups-ui-improvements`
* `#offline-indicator-v2`
* `#enable-jxl`

New flags:

* `#fingerprinting-canvas-image-data-noise`, `#fingerprinting-client-rects-noise` and `#fingerprinting-canvas-measuretext-noise`, enabled by default
* `#incognito-screenshot`, disabled by default
* `#max-connections-per-host`
* `#resume-background-video`
* `#ipv6-probing`
* `#enable-device-motion` and `#enable-device-orientation`
* `#show-legacy-tls-warnings`
* `#save-data-header`, disabled by default
* `#export-bookmarks-use-saf`, disabled by default
* `#allow-user-certificates`, disabled by default
* `#cleartext-permitted`, enabled by default, can be used to disable all cleartext-HTTP traffic
* `#omnibox-autocomplete-filtering`, can be used to restrict omnibox autocomplete results
* `#disable-external-intent-requests`, can be used to disable opening any external app for any URL
* `#enable-userscripts-log`, see https://github.com/bromite/bromite/wiki/UserScripts#flags
* `#certificate-transparency-enabled`, enabled by default; see https://chromium.googlesource.com/chromium/src/+/master/net/docs/certificate-transparency.md
* `#move-top-toolbar-to-bottom`, disabled by default
* `#site-engagement`, enabled by default, can be used to disable the automatically-generated icons for most visited sites on the NTP

With `chrome://flags/cromite` you can see the list of available flags

### Site settings

* webGL, disabled by default
* images, enabled by default
* Javascript JIT, disabled by default
* timezone customization override
* autoplay, disabled by default
* webRTC, disabled by default
* viewport protection, enabled by default
