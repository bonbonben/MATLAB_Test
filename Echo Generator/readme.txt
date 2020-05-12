Write a function called echo_gen that adds an echo effect to an audio recording.
Input is a column vector with values between -1 and 1 representing a time series of digitized sound data.
The input argument fs is the sampling rate.
The sampling rate specifies how many samples we have in the data each second.
The input argument delay represent the delay of the echo in seconds.
That is, the echo should start after delay seconds have passed from the start of the audio signal.
Finally, amp specifies the amplification of the echo which normally should be a value less than 1, since the echo is typically not as loud as the original signal. 
The output of the function is a column vector containing the original sound with the echo superimposed.
The output vector will be longer than the input vector if the delay is not zero (round to the nearest number of points needed to get the delay, as opposed to floor or ceil).
A sound recording has values between -1 and 1, so if the echo causes some values to be outside of this range, you will need to scale the entire vector, so that all values are within the range while retaining their relative amplitudes.

Code to call your function:
% Load splat which adds y and Fs to the workspace
load splat
% Call echo_gen to create the new audio data
output = echo_gen(y, Fs, 0.25, 0.6);

% Create a time axis. The time between points is 1/Fs;
dt = 1/Fs;
t = 0:dt:dt*(length(output)-1);
% Plot the new data to see visualize the echo
plot(t, output)

% sound (output, Fs) % Uncomment in MATLAB to listen to the new sound data
