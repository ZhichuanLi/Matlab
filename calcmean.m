% Creator: Zhichuan Li
% Create Date: 2018-11-06
% Email: lizhichuan2012@gmail.com
% Description: Example of for loop to calculate the mean of five random
% samples and the overall mean.

nsamples = 5;
npoints = 50;

for k = 1:nsamples
    iterationString = ["Iteration #", int2str(k)];
    disp(iterationString)
    currentData = rand(npoints, 1);
    sampleMean(k) = mean(currentData)
end
overallMean = mean(sampleMean)

if overallMean < .49
    disp('Mean is less than expected')
elseif overallMean > .51
    disp('Mean is greater than expected')
else
    disp('Mean is within the expected range')
end

