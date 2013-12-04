require 'torch'
require 'classify'


function test(dataset)
   return getLabels(dataset.data)
end


-- please specify a group name here!
group_name = 'CemMartin'
-- you might have to alter the path here
dataset = torch.load('test_data_digits_no_labels.t7')
prediction = test(dataset)

result = {
   group_name = group_name,
   pred = prediction:byte()
}
torch.save(string.format('%s_digits.t7', group_name), result)
