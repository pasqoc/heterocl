import sys
from .api import *
from .dsl import *
from .types import *
from .nparray import *
from .debug import hcl_excepthook
from tvm.intrin import *

sys.excepthook = hcl_excepthook