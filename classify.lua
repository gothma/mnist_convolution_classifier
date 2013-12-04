require 'torch'
require 'xlua'
require 'nn'

function getLabels(testData)

    model = torch.load('mnist.net')
    sample_size = testData:size(1)
    result = torch.LongTensor(sample_size)

    for data_id = 1, sample_size do
        xlua.progress(data_id, sample_size)
        res = model:forward(testData[data_id]:double())
        val, i = res:max(1)
        result[data_id] = i[1]
    end
    return result:byte()
end