function normalizedata(imgData,pData,numfreq,minunmasked,maskdilatesz)



bgval = -200;
load(imgData)
data = cube.data;

if sum(data(:)~=0)==0
    whichmasked = 1:numel(data);
    cube.setCutout(zeros(size(data)));
    IM = zeros(size(data));
    borderz = [];
    save(pData,'IM','cube','whichmasked','borderz')
    return
end

%numunmasked = round(minunmasked*numel(data(:,:,1)));

% numfreq is optimized for square cubes of size 300*300 or 400*400
IM0 = preprocessdata(data,numfreq);    
whichmasked = find(IM0==bgval);

if numel(whichmasked)~=0 %if ~= 0 there are masked pixels
    
    borderz = zeros(size(IM0));
    for i=1:size(borderz,3)
        whichm = find(IM0(:,:,i)==bgval);
        tmpmask = zeros(size(IM0,1),size(IM0,2));
        tmpmask(whichm)=1;
        Mask2 = imdilate(tmpmask,ones(maskdilatesz,maskdilatesz));
        %whichmasked = find(Mask2); %dilated set of idx for mask
        borderz(:,:,i) = tmpmask-Mask2;
    end
    IM = IM0; 
    IM(borderz==-1)=bgval;
    whichmasked = find(IM==bgval); clear IM0
else
    borderz=[]; IM=IM0; clear IM0
end

IM = double(cube.data); % OVERRIDING

save(pData,'IM','whichmasked','borderz','cube')

end
