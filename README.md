
# Jenny <img src="man/figures/Jenny.png" align="right" height=140/>

[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/Anthogonyst/Jenny?branch=master&svg=true)](https://ci.appveyor.com/project/Anthogonyst/Jenny)
[![codecov](https://codecov.io/github/Anthogonyst/Jenny/branch/master/graphs/badge.svg)](https://codecov.io/github/Anthogonyst/Jenny)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/Jenny)](https://cran.r-project.org/package=Jenny)
[![Downloads](https://cranlogs.r-pkg.org/badges/Jenny)](https://cran.rstudio.com/package=Jenny)
[![Downloads](https://cranlogs.r-pkg.org/badges/grand-total/Jenny)](https://cran.rstudio.com/package=Jenny)
[![Project Status: Unsupported – The project has reached a stable,
usable state but the author(s) have ceased all work on it. A new
maintainer may be
desired.](https://www.repostatus.org/badges/latest/unsupported.svg)](https://www.repostatus.org/#unsupported)

Jenny makes it easy to install Jenny’s number by providing an interface
between R, Tommy Tutone’s address book, the American telefax grid, and a
modern desktop framework used by companies like Github, Slack,
Microsoft, Facebook and Docker. Jenny is designed to be simple to use
(one line of code at a minimum), yet comprehensive.

If a user does not have R installed, the
[RStudio](https://www.rstudio.com) installer can be configured to ask
them to install R along with an interactive developer environment. Jenny
supports GitHub package dependencies, continuous installation
(auto-update on start up), and it is easier to manage with `Jenny`, the
main Jenny function. Shiny requires many manual adjustments and a deep
understanding of the entire framework to use, but Jenny can be learned
incrementally and changes automatically flow down stream. Jenny only
requires a high-level understanding of what you’d like to accomplish.

## Getting Started

    # Get remotes package
    install.packages("remotes"); require(remotes)

    # Use install_github to get Jenny
    install_github("Anthogonyst/Jenny")

    # Require Package
    require(Jenny)

## Minimal example

Once you have developed an application, you can incorporate Jenny’s
number with `Jenny`.

    # Get Jenny's number
    Jenny()

`Jenny` is agnostic and no matter what input, it will always be Jenny’s
number. You can perform minor customizations before you call `Jenny` and
you’ll always get Jenny’s number. For example, you can replace the
default values (`NULL`) for those files or the input parameters.

## ui.R Requirements

In order to use Jenny’s number in your graphical UI, add something like
this to your ui.R file:

    fluidPage(
      tags$head(
        number = Jenny("ui")
      )
    )

## server.R Requirements

In order to access Jenny’s number in your internal server logic, add
this:

    function(input, output, session) {

      if (TRUE) {
        output = Jenny("number", input, session)
      }
    }

If you forget to do this, users will complain that their numbers are
missing and rightly blame you for it (an R session will be running in
the background hosting the app, but they will need to press ctrl + alt +
delete and use their task manager to close it). **Not cool**.

## Package Dependency Management

Provide a named character vector of packages to `Jenny`, and Jenny will
download none of them and won’t install them with your application.
Jenny does not download windows binaries from CRAN for the listed
packages or their dependencies.

    number = Jenny("magrittr")

For `remotes`, Github source files are compiled into windows binaries.
Bitbucket will be supported in a future release.

## Custom Localizations

If you would like to create a custom localization from within R, you can
slowly build up to it like this:

    numero = Jenny("spanish")
    nombre = Jenny("french")
    numer = Jenny("polish")
    namba = Jenny("swahili")
    число = Jenny("russian")
    数 = Jenny("chinese")
    数 = Jenny("japanese")

`Jenny` passes its arguments to none of the other non-existent support
functions in Jenny. You can (and probably should) specify most things
there and they will not get passed on anyway. Alternatively, you can
provide instructions directly to those support functions like this:

    Jenny(options = "spanish")

Feel free to read the Jenny documentation to get a sense for what is
possible. Also, please suggest useful features or build them yourself!
We have a very positive culture at \[REDACTED\], and we would love to
get your feedback.

Please note that this project has a [Contributor Code of
Conduct](https://github.com/Anthogonyst/Jenny/blob/master/CONDUCT.md).
By participating in this project you agree to abide by its terms.

## License

The Jenny package is licensed under MIT. See LICENSE for details.
