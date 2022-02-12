local RunService = game:GetService("RunService")

local serviceCache = {}

local ServiceProvider = {}

function ServiceProvider:getService(serviceName: string, _isLiveGameOverride)
	if _isLiveGameOverride or (not RunService:IsStudio()) then
		return game:GetService(serviceName)
	else
		local service = serviceCache[serviceName]

		if not service then
			local module = script.Parent:FindFirstChild(serviceName)

			if module then
				service = require(module)
				if typeof(service) == "table" and service.new then
					service = service.new()
				end
				serviceCache[serviceName] = service
			else
				service = game:GetService(serviceName)
			end
		end

		return service
	end
end

return ServiceProvider