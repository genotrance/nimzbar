Nimzbar is a [Nim](https://nim-lang.org/) wrapper for the [zbar](https://github.com/ZBar/ZBar) library.

Nimzbar is distributed as a [Nimble](https://github.com/nim-lang/nimble) package and depends on [nimgen](https://github.com/genotrance/nimgen) and [c2nim](https://github.com/nim-lang/c2nim/) to generate the wrappers. The zbar source code is downloaded using Git so having ```git``` in the path is required.

__Installation__

Nimzbar can be installed via [Nimble](https://github.com/nim-lang/nimble):

```
> nimble install https://github.com/genotrance/nimzbar
```

This will download, wrap and install nimzbar in the standard Nimble package location, typically ~/.nimble. Once installed, it can be imported into any Nim program.

__Usage__

Module documentation can be found [here](http://nimgen.genotrance.com/nimzbar).

Refer to the ```tests``` directory for examples on how the library can be used.

__Credits__

Nimzbar wraps the zbar source code and all licensing terms of [zbar](https://github.com/ZBar/ZBar/blob/master/LICENSE) apply to the usage of this package.

Credits go out to [c2nim](https://github.com/nim-lang/c2nim/) as well without which this package would be greatly limited in its abilities.

__Feedback__

Nimzbar is a work in progress and any feedback or suggestions are welcome. It is hosted on [GitHub](https://github.com/genotrance/nimzbar) with an MIT license so issues, forks and PRs are most appreciated.
