function vr = printText2CommandLine(vr)
if vr.numTrials > 0
    fprintf('\n Time elapsed: %s \t',datestr(now-vr.timeStarted, 'MM:SS')); % print the time elapsed 
else
    fprintf('\n Start time: %s \t',datestr(now, 'HH:MM:SS'))
end

fprintf('Current World: %s (%03.0f)\n',vr.world_names{vr.currentWorld},vr.currentWorld);
fprintf('Current trial: %03.0f\t', vr.numTrials + 1);
fprintf('Number of rewards: %03.0f\n', vr.numRewards);
if vr.numTrials > 0
    fprintf('Reward percentage: %03.2f\t', vr.numRewards/(vr.numTrials));
    fprintf('Number of switches: %3.0f\n', length(vr.Switches)); % note this is a vector
end
%fprintf('\n LENGTH: %03.0f\n', vr.exper.variables.floorLength);
