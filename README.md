# vyper-by-example

Learn Vyper by examples

https://vyper.readthedocs.io/

### Topics

- Intro
  - what is Vyper
  - how does it compare to Solidity
  - what are some projects using Vyper
  - Install vyper (optional)
  - Remix setup
  - Hello World
- types
  - value types
    - copy behaviour
    - initial values
  - reference types
    - array, mapping, structs
- state variables and self
- function
  - visibility
  - mutability
  - multiple returns and tuple assignment
  - reentrancy lock
  - send ether
  - **default**
  - **init**
- variable scope, public variable, shadowing
- constants (built in, custom)
- control flow
  - if, for loops (range, for a in array), break, continue, pass, return
- Assertions and exceptions - raise, assert
- built in functions
  - create forwarder to
  - raw_call
  - raw_log
  - self destruct
  - send
  - keccak256
  - ecrecover
  - concat
  - sqrt
  - method_id
- interfaces
  - declare
  - import
  - ERC20, ERC721
  - implements
  - extract interface
- event logging
- natspec
- testing (frame work)

# Install Vyper

```shell
# install virtualenv
python3 -m pip install --user virtualenv
virtualenv -p python3 venv
source venv/bin/activate

# install vyper
pip install vyper
```

# Vyper

```shell
# compile
vyper myContract.vy
```
