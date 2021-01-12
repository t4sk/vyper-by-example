# @version ^0.2

@external
def deploy(_target: address) -> address:
    return create_forwarder_to(_target)