%Funktion zur Berechnung von FFTs
function [f,Y]=fft_analysis(t,y,win)
    N=length(y);
    y=y-mean(y);
    NFFT = 2^nextpow2(N);
    if exist('win','var')==true
        winfunc=window(win,N);
        correc=1/N*sum(winfunc);
        winfunc=winfunc/correc;
    else
        winfunc=window(@rectwin,N);
        correc=1/N*sum(winfunc);
        winfunc=winfunc/correc;
    end
    sze=size(y);
    if sze(1)==1
        y=y';
    end
    y=times(y,winfunc);
    Y=1/NFFT*fft(y,NFFT);
    Y=Y(1:NFFT/2+1);
    fs=1/mean(diff(t));
    nyq=fs/2;
    f=linspace(0,nyq,NFFT/2+1);
    %plot(f,2*abs(Y))
end
