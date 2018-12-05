# Package

version       = "0.1.1"
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
  raise newException(Exception, "Install failed, package is not supported on MacOSX")

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
