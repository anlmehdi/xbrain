%addpath(genpath(pwd))
p2 = pwd;
p2 = p2(1:strfind(pwd,'/x')-1);

addpath([p2,'/xbrain/data/groundtruth/'])
%
addpath([p2,'/xbrain/code/'])
%
addpath([p2,'/xbrain/code/visualize/'])
%
addpath([p2,'/xbrain/code/utils/'])
addpath([p2,'/xbrain/code/utils/filtercc/'])
addpath([p2,'/xbrain/code/utils/niiTools/'])
addpath([p2,'/xbrain/code/utils/ocpTools/'])
%
addpath([p2,'/xbrain/code/spatialstats/'])
%
addpath([p2,'/xbrain/code/segment-vessels/'])
addpath([p2,'/xbrain/code/segment-gmm/'])
%
addpath([p2,'/xbrain/code/metrics/'])
%
addpath([p2,'/xbrain/code/masking/maskdata/'])
addpath([p2,'/xbrain/code/masking/manualmasking/code/'])
addpath([p2,'/xbrain/code/masking/manualmasking/'])
addpath([p2,'/xbrain/code/masking/'])
%
addpath([p2,'/xbrain/code/hyperparam/lists/'])
addpath([p2,'/xbrain/code/hyperparam/'])
%
addpath([p2,'/xbrain/code/celldetect/'])
addpath([p2,'/xbrain/code/celldetect/scripts/'])
%
addpath([p2,'/xbrain/code/analysis/'])


disp('Added xbrain toolbox to path')


