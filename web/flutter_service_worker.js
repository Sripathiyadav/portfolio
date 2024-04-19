'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "351772286cd94b9877d328b0b9575dd9",
"assets/AssetManifest.bin.json": "79e5b042fce6e1436a8919f4787014ff",
"assets/AssetManifest.json": "e27860fd3d75e491007bdccbf038ae5a",
"assets/assets/android-6.png": "22471a1e3d7257cfda8b3580a618dd82",
"assets/assets/android.png": "22471a1e3d7257cfda8b3580a618dd82",
"assets/assets/Avatar.png": "1fc1c578d2002fc35814897743cfbfca",
"assets/assets/Certifications/appriciation%2520certificate.jpg": "2f1890a1a2fa75ba6f4bed9e058ce825",
"assets/assets/Certifications/datascience.jpg": "06617db2219fffd61553b38f314c7995",
"assets/assets/Certifications/forage.jpg": "e41dbaa2f7e220ba8cfc96883ae40e34",
"assets/assets/Certifications/gcp.jpg": "1fca13b8fd282f2c0f6b4eb640855045",
"assets/assets/Certifications/internship.jpg": "e40cc36cfd141e8df3cc097f075b774d",
"assets/assets/Certifications/into_cybersecurity.jpg": "54a2990e5295bddc8f8c4ae3fefc3b71",
"assets/assets/Certifications/top_performer.jpg": "9d500d97c0e0b4ca93f9de5b01fa2006",
"assets/assets/css3.png": "ec3e6e33fccfcd5a5740ca2bb84cd13c",
"assets/assets/dart.png": "c979b430b2da155059ebc0a22b0a26ac",
"assets/assets/desktop.png": "febb8ceda030b77d081355919ede990a",
"assets/assets/discord.png": "edd33bba406022044f58e23299ac79cd",
"assets/assets/drive.png": "32370cfede41b9d93bf4b0d8a76b06bc",
"assets/assets/flutter.png": "e02a6c427d3f2f6128219c4916cc4c6f",
"assets/assets/GitHub.png": "855faa35e9b67284a8b21d0879886496",
"assets/assets/Gmail.png": "ad67e48771a2f398fb725e3f881bae55",
"assets/assets/google%2520cloud.png": "d0567605624e21241ab510cd07af4b63",
"assets/assets/html5.png": "6ee622d79495c8639c6f70b6b2b87d17",
"assets/assets/Instagram.png": "dd8cc2a2c8fe3b4225c11221f737a513",
"assets/assets/ios.png": "fbdbad9758e86c88f60f3a4bd648cac1",
"assets/assets/linkedin.png": "363fd73acf8a4aae127f8a0013678e96",
"assets/assets/linkedln.png": "c66125fb91d77c5a33968ed648a1e2d3",
"assets/assets/major.png": "2ef7e1a23985e58c62cf67d0c28e17ef",
"assets/assets/projects/major.png": "2ef7e1a23985e58c62cf67d0c28e17ef",
"assets/assets/projects/mini.png": "c5d155cf22d8fdd3c0cc582c4a117de0",
"assets/assets/projects/VP-Opencv.png": "c8202d6b6b39a40c58ff86df338c193e",
"assets/assets/python.png": "22eeecf99b8d92726b4f3735be5473c0",
"assets/assets/telegram.png": "1d1371c7d2bc2b3193fde9dc18ba93b7",
"assets/assets/web.png": "e8c799a132a989f1ef79d5128a83979f",
"assets/assets/White%2520Logo.png": "32756706ff02369e69bd38f8b421fd53",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "d068d80363794f4d85e708d8eea74396",
"assets/NOTICES": "0a8d05c8b1869580511ed2082285c3f6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/favicon-32x32.png": "716ae9c41026a3b6326b494d46db7080",
"icons/favicon.ico": "e8163252e6f4b03b9cd49acd4e75856f",
"icons/favicon.png": "f333890919492e9c4ed9ec19f914d335",
"icons/Icon-192.png": "2c0c7278d7803936a7a5e1bbcb3e02ae",
"icons/Icon-maskable-192.png": "5d4b77bb254a7b8544168522f348ab94",
"icons/Icon-maskable-512.png": "2038fd3b5a5b1264546d7bde6007e77e",
"index.html": "1e5186e21d86c3da8e1017fc191545e3",
"/": "1e5186e21d86c3da8e1017fc191545e3",
"logo.ico": "e8163252e6f4b03b9cd49acd4e75856f",
"main.dart.js": "db8ed1237acaed7077de645990b71c1c",
"manifest.json": "c4414800f3400f3009298045317a3054",
"version.json": "15235b5108d6a877ef74fe3317a96bf7"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
