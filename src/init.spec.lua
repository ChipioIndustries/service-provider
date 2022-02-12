return function()
	describe("ServiceProvider.lua", function()
		local ServiceProvider = require(script.Parent)

		it("should return the actual service in live game", function()
			local serviceName = "DataStoreService"
			local service = game:GetService(serviceName)
			local service2 = ServiceProvider:getService(serviceName, true)

			expect(service).to.equal(service2)
		end)

		it("should return a mock service in studio", function()
			local serviceName = "DataStoreService"
			local mockService = ServiceProvider:getService(serviceName)

			expect(mockService).to.be.a("table")
		end)

		it("should return cached mock services", function()
			local serviceName = "DataStoreService"

			local mockService1 = ServiceProvider:getService(serviceName)
			local mockService2 = ServiceProvider:getService(serviceName)

			expect(mockService1).to.equal(mockService2)
		end)
	end)
end