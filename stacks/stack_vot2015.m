function experiments = stack_vot2015()

% Temporary error until we get the legacy mode set up
error('This version of the toolkit is not compatible with this stack. Please use vot2015-final version of the toolkit.');

set_global_variable('bundle', 'http://box.vicos.si/vot/vot2015.zip');
set_global_variable('legacy_rasterization', true);

baseline.name = 'baseline';
baseline.converter = [];
baseline.type = 'supervised';
baseline.labels = {'camera_motion', 'illum_change', 'occlusion', 'size_change', 'motion_change', 'empty'};

baseline.parameters.repetitions = 15;
baseline.parameters.burnin = 10;
baseline.parameters.skip_initialize = 5;
baseline.parameters.failure_overlap = 0;

experiments = {baseline};

end

