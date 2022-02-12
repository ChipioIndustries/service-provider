![Unit Tests](https://github.com/chipioindustries/service-provider/actions/workflows/ci.yml/badge.svg)
![Create Release](https://github.com/chipioindustries/service-provider/actions/workflows/release.yml/badge.svg)
![Docs Deploy](https://github.com/chipioindustries/service-provider/actions/workflows/docs-deploy.yml/badge.svg)

# ServiceProvider

ServiceProvider is a module that enables injection of mock services for unit testing.

## Installing with Wally

* Add this line to your `wally.toml` file under `[dependencies]`:

	```toml
	ServiceProvider = "chipioindustries/service-provider@1.0.0"
	```

* Then run `wally install` to install the package.

For usage instructions, see the [documentation](https://chipioindustries.github.io/service-provider).
