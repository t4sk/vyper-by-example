# @version ^0.2

"""
- how to use create_forwarder_to
- gas cost direct deploy vs create_forwarder_to
- master copy must not implement selfdestruct
"""

interface DeployMe:
    def setup(name: String[100]): nonpayable

@external
def deploy(_masterCopy: address, _name: String[100]) -> address:
    addr: address = create_forwarder_to(_masterCopy)
    # DeployMe.__init__ was not called, else this would fail
    DeployMe(addr).setup(_name)
    return addr