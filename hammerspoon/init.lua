# init.lua
-- Imports
local homeNetwork = require "network"

-- Toggle WiFi based on Ethernet being connected or not
homeNetwork.setEthernetInterface("USB 10/100/1000 LAN")
systemWatcher = hs.caffeinate.watcher.new(homeNetwork.handleWifi)
systemWatcher:start()


