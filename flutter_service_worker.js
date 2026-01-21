'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"manifest.json": "e2b9103aaafaf8ed9f90576c9d9a1341",
"index.html": "e2955616e118e5e431d86a4e3ebef93e",
"/": "e2955616e118e5e431d86a4e3ebef93e",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "8033959fb0112d991382f12933487b01",
"assets/assets/images/project/Network/Screenshot_2025-11-08_082640.png": "d30616bba62b91a1159772fa335d0fa3",
"assets/assets/images/project/Network/Screenshot_2025-11-08_082738.png": "bad7e3cd2bd4ee95a58af9b8ce6e8298",
"assets/assets/images/project/Network/Screenshot_2025-11-08_083005.png": "4716772499c47623e8a2b3497caa9979",
"assets/assets/images/project/Network/Screenshot_2025-11-08_082858.png": "d84c80f47a1f13eaeca8b5c578ca5710",
"assets/assets/images/project/Network/Screenshot_2025-11-08_082538.png": "5c503c65c1ad32b49effcd022c103d4d",
"assets/assets/images/project/Project_SQL/Screenshot_2026-01-05_220839.png": "549455ec4a2396bc54f035fd7c41e0aa",
"assets/assets/images/project/Project_SQL/Screenshot_2026-01-05_215418.png": "4aff6f5c7e053661387121a205d84fd7",
"assets/assets/images/project/Project_SQL/Screenshot_2026-01-05_222526.png": "50af0fd85b95ed6d3b880025a5b3914a",
"assets/assets/images/project/Project_SQL/Screenshot_2026-01-02_220000.png": "f4f979072ba0cba6e263fc05e234738f",
"assets/assets/images/project/Project_SQL/Screenshot_2026-01-05_222847.png": "d58de23f188c4373212874fce703d16d",
"assets/assets/images/project/Project_SQL/Screenshot_2026-01-02_195932.png": "11c3d7c3cc730a6f9345de50e963deb8",
"assets/assets/images/project/Project_SQL/Screenshot-2026-01-05_215821.png": "38a477a3edaaa3cabcf70a719fd53bc4",
"assets/assets/images/project/Project_SQL/Screenshot_2026-01-02_221904.png": "7dca7610258b47fc501aa24bdc39ae17",
"assets/assets/images/project/Project_SQL/Screenshot_2026-01-05_213726.png": "3e32c9f3a3defa850eb7d31d848a0312",
"assets/assets/images/profile/profile.jpg": "183e63a01aa635c26e1ac7bdddaa0a0a",
"assets/assets/images/profile/DSC07578-4.jpg": "96dc6571ccfe5fc20fa63c3a86eed94b",
"assets/assets/images/certi/certi6022018.jpg": "1f2410a43fa167cad8121d8cb10e80f0",
"assets/assets/images/certi/certi22082017.jpg": "a21ad3ac597b9b77757b4c7e64a288dd",
"assets/assets/images/certi/certi26122018.jpg": "ca4ff8e9cb34b8435e837fb205f5016a",
"assets/assets/images/certi/certi12072019.jpg": "91f8fcab62e6e6da249f711d28b5f05d",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_10.jpg": "aab46dcaa58c84ca9bba68c8387a347d",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_9.jpg": "b5d7e23e2ea224c01279f3ff2b44ec86",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_12.jpg": "55235964cd1cf132096ce015cd6a41c8",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_2.jpg": "56d86b9c18e47bcaf0eb83ad48156365",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_5.jpg": "b3cd007646eb88fd95888e0b48047145",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_4.jpg": "b7d6c687f0bade57777bae3d98b01c5b",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_8.jpg": "124b2e74dbbb0abc77d810e0c6204f4d",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_7.jpg": "308e0e77cbe6cdc6d54397522a690106",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_11.jpg": "cd540bb7b8aa51c75cd76c923a70d2a4",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_3.jpg": "74f3be548b7042b6f82e1e2ea9662512",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_1.jpg": "b701cd6ed693cf51cba32d180cd36be5",
"assets/assets/images/hobby/LINE_ALBUM_1912026_260120_6.jpg": "58923889be35aadc8482caf1481e4910",
"assets/fonts/MaterialIcons-Regular.otf": "650f5e9952094709b870c7bb9f6edd0a",
"assets/NOTICES": "45ce10fa4cb3c92d19ae8ce3c5342b86",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "014667512b76b08a8fd44991010dae63",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"logo_port.png": "99ca15d64c8ef8f54472f4e5bcdc1f32",
"flutter_bootstrap.js": "a46a53e137d9b1d0a827682fd0ff49d7",
"version.json": "9b818ca9511483c901bed1545384376c",
"main.dart.js": "10fec4e6f586f82170d092671b63a48f"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
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
