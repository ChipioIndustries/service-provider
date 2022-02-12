![Unit Tests](https://github.com/chipioindustries/service-provider/actions/workflows/ci.yml/badge.svg)
![Create Release](https://github.com/chipioindustries/service-provider/actions/workflows/release.yml/badge.svg)
![Docs Deploy](https://github.com/chipioindustries/service-provider/actions/workflows/docs-deploy.yml/badge.svg)

# ServiceProvider

ServiceProvider is a template for creating Roblox package repositories.

## SETTING UP REPOSITORY (REMOVE THIS)

* Copy this repository's contents into a new repository
* Find and replace all instances of the following terms:

|Term|Replace with|
|-|-|
|chipioindustries|your github username|
|service-provider|your package name|
|ServiceProvider|your package name as it appears to users and as a Studio instance|
|package_description_here|your package description|
|TAGLINE_HERE|your package tagline|

* Copy the contents of your .wally/auth.toml file into a Github secret named "WALLY_AUTH"

## Installing with Wally

* Add this line to your `wally.toml` file under `[dependencies]`:

	```toml
	ServiceProvider = "chipioindustries/service-provider@0.1.0"
	```

* Then run `wally install` to install the package.

For usage instructions, see the [documentation](https://chipioindustries.github.io/service-provider).
