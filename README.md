## Requirements
The following libraries are required:

* torch
* paths
* nn

## Files
The file `mnist.net`contains the neural network and has to be in the same directory as `classify.lua`

## Execution

    > require 'classify'
    true
    > mnist_set = torch.load('mnist.t7/test_32x32.t7', 'ascii')
    > testData = mnist_set.data
    > res = getLabels(testData)
    [================================ 10000/10000 ===============================>]
    
## Data format
The input tensor has to be a `torch.ByteTensor` of size `n,1,32,32`

The output tensor is a `torch.ByteTensor` of size `n`
