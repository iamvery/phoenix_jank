# Phoenix Jank

[![Build Status][travis-img]][travis] [![Hex Version][hex-img]][hex]

[travis-img]: https://travis-ci.org/iamvery/phoenix_jank.svg?branch=master
[travis]: https://travis-ci.org/iamvery/phoenix_jank
[hex-img]: https://img.shields.io/hexpm/v/phoenix_jank.svg
[hex]: https://hex.pm/packages/phoenix_jank

[Phoenix][phoenix] integration with [Jank][jank] client library.

View the [Documentation][docs].

## Usage

1. Install with Hex:

   ```elixir
   def deps do
     [{:phoenix_jank, "~> 0.1.0"}]
   end
   ```

TODO add more usage docs

## Release

1. Bump the version in `mix.exs`.
1. Commit version with Git tag `vX.X.X`.
1. Publish to Hex

   ```
   $ mix hex.publish docs
   ```


[phoenix]: http://www.phoenixframework.org/
[jank]: https://github.com/iamvery/jank
[docs]: https://hexdocs.pm/phoenix_ratchet
