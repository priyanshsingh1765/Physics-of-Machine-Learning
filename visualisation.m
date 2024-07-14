% Generate a sample tensor W1 of shape (15, 10, 5000)
data = load('W1.mat');

% Access the tensor
W1 = data.W1;
% Create a figure for the animation
figure;

% Set up the initial image
h = imagesc(W1(:,:,1));
colorbar; % Add a colorbar for reference
caxis([0 1]); % Set the color axis limits to match the data range
title('Slice 1');

% Loop through each slice and update the image
for i = 1:size(W1, 3)
    set(h, 'CData', W1(:,:,i)); % Update the image data
    title(['Slice ' num2str(i)]); % Update the title
    pause(0.01); % Pause for a short time to create the animation effect
end

