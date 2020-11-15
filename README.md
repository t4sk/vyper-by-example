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
- function
  - visibility
  - mutability
  - multiple returns and tuple assignment
  - send ether
  - **default**
  - TODO reentrancy lock
  - **init**
- state variables, public, private, shadowing, constant, env variables (self.balance, msg.sender, msg.value, block.timestamp, tx.origin)
- control flow
  - if, for loops (range, for a in array), break, continue, pass, return
- Assertions and exceptions - raise, assert
- event logging
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
