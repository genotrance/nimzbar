# Package

version       = "0.1.0"
author        = "genotrance"
description   = "zbar wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.5.0"

var
  name = "nimzbar"
  cmd = when defined(Windows): "cmd /c " else: ""

if defined(MacOSX):
  echo "Install failed, package is not supported on MacOSX"
  quit(1)

if fileExists(name & ".nimble"):
  mkDir(name)

task setup, "Checkout and generate":
  if gorgeEx(cmd & "nimgen").exitCode != 0:
    withDir(".."):
      exec "nimble install nimgen -y"
  exec cmd & "nimgen " & name & ".cfg"

before install:
  setupTask()

task test, "Run tests":
  exec "nim c -r tests/t" & name & ".nim"
