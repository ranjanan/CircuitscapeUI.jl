using CircuitscapeUI
using Circuitscape
using Distributed
w = run_ui()
oldpwd = pwd()
cd(CircuitscapeUI.TESTPATH)
Circuitscape.runtests()
cd(oldpwd)
