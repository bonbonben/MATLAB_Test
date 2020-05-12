function output = echo_gen(input,fs,delay,amp)
samples = round(fs*delay);
ds = floor(samples);
signal = zeros(length(input)+ds,1);
signal(1:length(input)) = input;
echo_signal = zeros(length(input)+ds,1);
echo_signal(ds+(1:length(input*amp))) = input*amp;
output= signal + echo_signal;
p = max(abs(output));
if p>1
    output=output ./ p;
else
    output = output;
end
end
