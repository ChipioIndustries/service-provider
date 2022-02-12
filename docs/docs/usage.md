---
sidebar_position: 2
---

# Usage

Begin by requiring the module.

```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ServiceProvider = require(ReplicatedStorage.Packages.ServiceProvider)
```

Use the `getService` function in the same manner as `game:GetService()`.

```lua
local DataStoreService = ServiceProvider:getService("DataStoreService")
```

In a live game, the `getService` function will always return the actual service. In Studio, the function will return a mock service that can be used to simulate certain conditions and errors for testing purposes. If the requested service does not have a mock counterpart, the normal service will be returned.

When in doubt, use ServiceProvider to get a service as opposed to `game:GetService()`, even if no mock counterpart currently exists. If a mock counterpart is developed in the future, effort required to integrate it will be minimized.

Inert services such as ServerScriptService and ReplicatedStorage have no functionality which needs to be simulated, so there is no need to access these through the ServiceProvider.
