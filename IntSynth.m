function IntSynth
    global IS
    Name                    = 'Interactive Synth';
    Version                 = 1.0;

    %% Tones
    TA5                     = 440;                                      % [Hz] - tunning choice (A5) also known as reference tune
    KeyId                  = -9:27;                                   %number of keys 36%
                                                                       % with respect to reference tone (0-A) (e.g. [-2,-1,0,1] means [G G# A A#])
    Tonelabel              = {'C' 'C#' 'D' 'D#' 'E' 'F' 'F#' 'G' 'G#' 'A' 'A#' 'B'};
    IS.Fs          = 16384;                                      % [Hz] - sampling frequency
    %https://en.wikipedia.org/wiki/Piano_key_frequencies%
    IS.Frequency   = TA5*2.^(KeyId./12);                 % table of frequencies [Hz] w.r.t keys
    IS.Keyboard          = {'z' 'x' 'd' 'c' 'f' 'v' 'b' 'h' 'n' 'j' 'm' 'k' 'comma' 'period' 'semicolon' 'slash'};   % defines keyboard (Matlab notation)
    KeyboardMarker          = {'z' 'x' 'd' 'c' 'f' 'v' 'b' 'h' 'n' 'j' 'm' 'k' ','     '.'      ';'         '/'};
    IS.NumSample      = cell(size(KeyId));

%property of figure%
%name the figure piano%
%off the figure number being displayed on title of figure%

ScreenSize = get(0,'ScreenSize');
figure('Name','IntSynth','Resize','on','NumberTitle','off','MenuBar','none','KeyPressFcn',@(~,evt)KeyPress(evt.Key));

fig = gcf;
fig.Color =[0.58 0.63 0.98]; %RGB Triplet color in MATLAB use uisetcolor command to select color of your liking%

  %% Black and white Keys
    Key(1)                  = struct('X',[-0.5 0.5 0.5 -0.5], 'Y',[0 0 3 3], 'Color','white');
    Key(2)                  = struct('X',[-0.4 0.4 0.4 -0.4], 'Y',[1 1 3 3], 'Color','black');
    KeyLabel                 = Tonelabel(mod(KeyId+9,12)+1);
    KeyColorId              = cellfun(@(x) (length(x)==2)+1, KeyLabel);  % 1-white, 2-black
    IS.KeyboardKeyId    = (1-length(IS.Keyboard):0) + find(strcmp(KeyLabel,'D'),1,'last');    % 'slash' = first D from the left side
%% Board
    KeyScale        = 30;                                               % change this value to resize Synth
    Size            = [sum(KeyColorId==1)+1, 3] * KeyScale + [0 60]    % depends on number of white keys


 %application window%
fig.Position=[(ScreenSize(3:4) - Size)*0.5, Size] + [0 0 10 27];
title(sprintf('%s v%0.1f', Name, Version));





 %% Create keyboard
    nTone           = length(KeyId);
    KeyBoard(nTone) = matlab.graphics.primitive.Patch;
    X = KeyScale;
    for i = 1:nTone
        cid = KeyColorId(i);
        x = X + (Key(cid).X - (cid==2)*0.5)*KeyScale;
        y = 5 + Key(cid).Y*KeyScale;
        %set(KeyBoard,'ButtonDownFcn',@MousePress);
        KeyBoard(i) = patch(x,y,Key(cid).Color,'ButtonDownFcn',@(~,~)MousePress(i));

        if (cid==1), uistack(KeyBoard(i),'bottom'); end;
        text(mean(x(1:2)),y(1)+12,KeyLabel{i},'Color',Key(3-cid).Color,'HorizontalAlignment','center','PickableParts','none');
        id = find(IS.KeyboardKeyId==i);
        if ~isempty(id)
            text(mean(x(1:2)),y(1)+30,KeyboardMarker{id},'Color',[0.5 0.5 0.5],'HorizontalAlignment','center','PickableParts','none');
        end
        X = X + (cid==1)*KeyScale;
        %IS.hShape     = ('bselection',@(src,~)ChangeShape(src),'ButtonDownFcn',@(src,~)ChangeShape(src));
    end
    %text([120;120],Size(2)-[15;35],{'shape:'},'FontWeight','bold');
    IS.hShape     = text((580),(Size(2)-15),{'Start'},'Color','green','FontWeight','bold','FontSize',16,'ButtonDownFcn',@(src,~)ChangeShape(src));
    %text([120;120],Size(1)-[15;35],{'shape:'},'HorizontalAlignment','right','FontWeight','bold');
    %IS.hShape     = disp('event.String','ButtonDownFcn',@(src,~)ChangeShape(src));
   %https://in.mathworks.com/help/matlab/ref/uibuttongroup.html%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%back ground box for buttons%


  IS.bg = uibuttongroup('Visible','off',...
                   'BackgroundColor',[0.78 0.78 0.94],...
                  'Position',[0 0 0.1 1],...
                  'SelectionChangedFcn',@bselection);
 %IS.bg.BackgroundColor=[0.78 0.78 0.94];
% Create three radio buttons in the button group.
IS.r1 = uicontrol(IS.bg,'Style',...
                  'radiobutton',...
                  'String','Sine',...
                  'Tag','1',...
                  'Position',[10 350 100 30],...
                  'BackgroundColor',[0.96 0.97 0.94],...
                  'HandleVisibility','callback');
              %'Callback',{@SelectedObject}
%r1.Position=[10 350 100 30];
%r1.BackgroundColor=[0.96 0.97 0.94];

%r1.Position=[120;120],Size(2)-[15;35];
%r1.HorizontalAlignment=right;
IS.r2 = uicontrol(IS.bg,'Style','radiobutton',...
                  'String','Square',...
                  'Tag','2',...
                  'Position',[10 250 100 30],...
                  'BackgroundColor',[0.96 0.97 0.94],...
                  'HandleVisibility','callback');
%r2.Position=[10 250 100 30];
%r2.BackgroundColor=[0.96 0.97 0.94];

%r2.Position=[120;120],Size(2)-[15;35];
%r2.HorizontalAlignment=right;

IS.r3 = uicontrol(IS.bg,'Style','radiobutton',...
                  'String','Sawtooth',...
                  'Tag','3',...
                  'Position',[10 150 100 30],...
                  'BackgroundColor',[0.96 0.97 0.94],...
                  'HandleVisibility','callback');
%r3.Position=[10 150 100 30];
%r3.BackgroundColor=[0.96 0.97 0.94];

%r3.Position=[120;120],Size(2)-[15;35];
%r3.HorizontalAlignment=right;
% Make the uibuttongroup visible after creating child objects.
IS.bg.Visible = 'on';


function bselection(source,event)
       disp(['Previous: ' event.OldValue.String]);
       disp(['Current: ' event.NewValue.String]);
       disp('------------------');
end


    %% Initial settings
    IS.ToneShapeId       = 1;
    %IS.ToneAmplitudeId   = 1;
    SelectedObject();


% use shg to show current figure%
savefig(fig,'C:\Users\Owner\Documents\FY\working dvp\working dvp\IntSynth.fig','compact'); %to save figure in fig extension%
%close the previous previous displayed figure%
close(fig)
openfig('IntSynth.fig'); %command to open a saved figure%
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function SelectedObject()
%fprintf('hello')
global IS
set([IS.hShape],'Color','black');
set([IS.hShape(IS.ToneShapeId)],'Color','yellow');
%set([IS.bg(IS.ToneShapeId)]);
%a=str2double(get(IS.bg, 'String'));
T   = 0.5;                                      % sound duration [s]
Amp = linspace(1,1,IS.Fs*T);
% shape
    t   = linspace(0,T,IS.Fs*T);
    for i=1:length(IS.NumSample)
        a = 2*pi*IS.Frequency(i)*t;
        %switch IS.ToneShapeId
           switch IS.ToneShapeId
            case 1                                  % sine
                s = sin(a);
            case 2                                  % square
                s = (2*(sin(a)>0)-1)*0.6;
            case 3                                  % sawtooth
                N = 1:2:13;
                s = sum(sin(N'*a).^2 .* ((4/pi./N)'.^2*ones(size(t)))) - 1;
         end
        IS.NumSample{i} = s.*Amp;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ChangeShape(src)
    global IS
    IS.ToneShapeId = find(IS.hShape==src);
    %IS.ToneShapeId = find(IS.bg==src);
    SelectedObject();
end


function MousePress(KeyId)
    global IS
    sound(IS.NumSample{KeyId}, IS.Fs);
end


function KeyPress(key)
    global IS
    id = find(ismember(IS.KeyLabel,key));
    if ~isempty(id)
        KeyId = IS.KeyboardToneId(id);
        if (KeyId>0)
            sound(IS.NumSample{KeyId}, IS.Fs);
        end
    end
end
