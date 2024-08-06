function varargout = piano_V4(varargin)
%PIANO_V4 MATLAB code file for piano_V4.fig
%      PIANO_V4, by itself, creates a new PIANO_V4 or raises the existing
%      singleton*.
%
%      H = PIANO_V4 returns the handle to a new PIANO_V4 or the handle to
%      the existing singleton*.
%
%      PIANO_V4('Property','Value',...) creates a new PIANO_V4 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to piano_V4_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      PIANO_V4('CALLBACK') and PIANO_V4('CALLBACK',hObject,...) call the
%      local function named CALLBACK in PIANO_V4.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help piano_V4

% Last Modified by GUIDE v2.5 05-May-2021 22:05:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @piano_V4_OpeningFcn, ...
                   'gui_OutputFcn',  @piano_V4_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before piano_V4 is made visible.
function piano_V4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for piano_V4
handles.output = hObject;
handles.SampleRate  = 1/20000;
handles.SoundVector = 0;
handles.TimeValue   = 0.3488;
% handles.STFreqValue = 1;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes piano_V4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = piano_V4_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in G_3.
function G_3_Callback(hObject, eventdata, handles)
% hObject    handle to G_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 207.65;
PlayTune(handles,frequency);

% --- Executes on button press in A_3.
function A_3_Callback(hObject, eventdata, handles)
% hObject    handle to A_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 233.08;
PlayTune(handles,frequency);

% --- Executes on button press in F_5.
function F_5_Callback(hObject, eventdata, handles)
% hObject    handle to F_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 739.99;
PlayTune(handles,frequency);

% --- Executes on button press in F_3.
function F_3_Callback(hObject, eventdata, handles)
% hObject    handle to F_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 185.00;
PlayTune(handles,frequency);

% --- Executes on button press in A_4.
function A_4_Callback(hObject, eventdata, handles)
% hObject    handle to A_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 466.16;
PlayTune(handles,frequency);

% --- Executes on button press in D_5.
function D_5_Callback(hObject, eventdata, handles)
% hObject    handle to D_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 622.25;
PlayTune(handles,frequency);

% --- Executes on button press in C_5.
function C_5_Callback(hObject, eventdata, handles)
% hObject    handle to C_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 554.37;
PlayTune(handles,frequency);

% --- Executes on button press in G_4.
function G_4_Callback(hObject, eventdata, handles)
% hObject    handle to G_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 415.3;
PlayTune(handles,frequency);

% --- Executes on button press in C_4.
function C_4_Callback(hObject, eventdata, handles)
% hObject    handle to C_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 277.18;
PlayTune(handles,frequency);

% --- Executes on button press in G_B3.
function G_B3_Callback(hObject, eventdata, handles)
% hObject    handle to G_B3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 196;
PlayTune(handles,frequency);

% --- Executes on button press in A_B3.
function A_B3_Callback(hObject, eventdata, handles)
% hObject    handle to A_B3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 220;
PlayTune(handles,frequency);

% --- Executes on button press in B_B3.
function B_B3_Callback(hObject, eventdata, handles)
% hObject    handle to B_B3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 246.94;
PlayTune(handles,frequency);

% --- Executes on button press in C_B4.
function C_B4_Callback(hObject, eventdata, handles)
% hObject    handle to C_B4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 261.625;
PlayTune(handles,frequency);

% --- Executes on button press in D_B4.
function D_B4_Callback(hObject, eventdata, handles)
% hObject    handle to D_B4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 293.66;
PlayTune(handles,frequency);

% --- Executes on button press in E_B4.
function E_B4_Callback(hObject, eventdata, handles)
% hObject    handle to E_B4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 329.63;
PlayTune(handles,frequency);

% --- Executes on button press in F_B4.
function F_B4_Callback(hObject, eventdata, handles)
% hObject    handle to F_B4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 349.23;
PlayTune(handles,frequency);

% --- Executes on button press in G_B4.
function G_B4_Callback(hObject, eventdata, handles)
% hObject    handle to G_B4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 392;
PlayTune(handles,frequency);

% --- Executes on button press in A_B4.
function A_B4_Callback(hObject, eventdata, handles)
% hObject    handle to A_B4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 440;
PlayTune(handles,frequency);

% --- Executes on button press in B_B4.
function B_B4_Callback(hObject, eventdata, handles)
% hObject    handle to B_B4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 493.88;
PlayTune(handles,frequency);

% --- Executes on button press in C_B5.
function C_B5_Callback(hObject, eventdata, handles)
% hObject    handle to C_B5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 523.25;
PlayTune(handles,frequency);

% --- Executes on button press in D_B5.
function D_B5_Callback(hObject, eventdata, handles)
% hObject    handle to D_B5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 587.33;
PlayTune(handles,frequency);

% --- Executes on button press in E_B5.
function E_B5_Callback(hObject, eventdata, handles)
% hObject    handle to E_B5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 659.26;
PlayTune(handles,frequency);

% --- Executes on button press in F_B5.
function F_B5_Callback(hObject, eventdata, handles)
% hObject    handle to F_B5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 698.46;
PlayTune(handles,frequency);

% --- Executes on button press in F_4.
function F_4_Callback(hObject, eventdata, handles)
% hObject    handle to F_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 369.99;
PlayTune(handles,frequency);

% --- Executes on button press in D_4.
function D_4_Callback(hObject, eventdata, handles)
% hObject    handle to D_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 311.13;
PlayTune(handles,frequency);

% --- Executes on button press in G_B5.
function G_B5_Callback(hObject, eventdata, handles)
% hObject    handle to G_B5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 783.99;
PlayTune(handles,frequency);

% --- Executes on button press in F_B3.
function F_B3_Callback(hObject, eventdata, handles)
% hObject    handle to F_B3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 174.61;
PlayTune(handles,frequency);

% --- Executes on button press in E_B3.
function E_B3_Callback(hObject, eventdata, handles)
% hObject    handle to E_B3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 164.81;
PlayTune(handles,frequency);

% --- Executes on button press in D_B3.
function D_B3_Callback(hObject, eventdata, handles)
% hObject    handle to D_B3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 146.83;
PlayTune(handles,frequency);

% --- Executes on button press in A_B5.
function A_B5_Callback(hObject, eventdata, handles)
% hObject    handle to A_B5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 880;
PlayTune(handles,frequency);

% --- Executes on button press in C_B3.
function C_B3_Callback(hObject, eventdata, handles)
% hObject    handle to C_B3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 130.81;
PlayTune(handles,frequency);

% --- Executes on button press in B_B5.
function B_B5_Callback(hObject, eventdata, handles)
% hObject    handle to B_B5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 987.77;
PlayTune(handles,frequency);

% --- Executes on button press in G_5.
function G_5_Callback(hObject, eventdata, handles)
% hObject    handle to G_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 830.61;
PlayTune(handles,frequency);

% --- Executes on button press in A_5.
function A_5_Callback(hObject, eventdata, handles)
% hObject    handle to A_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 932.33;
PlayTune(handles,frequency);

% --- Executes on button press in D_3.
function D_3_Callback(hObject, eventdata, handles)
% hObject    handle to D_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 155.56;
PlayTune(handles,frequency);

% --- Executes on button press in C_3.
function C_3_Callback(hObject, eventdata, handles)
% hObject    handle to C_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frequency = 138.59;
PlayTune(handles,frequency);

% --- Executes on button press in Recording.
function Recording_Callback(hObject, eventdata, handles)
% hObject    handle to Recording (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Recording

%--- own define function -----
function PlayTune(handles,frequency)
% plays the note that was pressed for 1 second
% also sets the frequency value on GUI for last played note.

strFreq = num2str(frequency);
% set(handles.STFreqValue, 'String', strFreq);

SampleRate  = handles.SampleRate;
TimeValue   = handles.TimeValue;
Samples     = 0:SampleRate:TimeValue;
% SinOn       = get(handles.SinWave, 'Value');
% SquareOn    = get(handles.SquareWave, 'Value');
% SawtoothOn  = get(handles.SawtoothWave, 'Value');
amp = get(handles.Amplitude, 'Value');
switch get(handles.popupmenu1,'Value')
    case 1
    
% if SinOn == 1
  soundVector = sin(2*pi*frequency*Samples)*amp;
    case 2
% elseif SquareOn == 1
  soundVector = square(2*pi*frequency*Samples)*amp;
% elseif SawtoothOn == 1
    case 3
  soundVector = sawtooth(2*pi*frequency*Samples)*amp;  %sawtooth shape%
    case 4
  soundVector = sawtooth(2*pi*frequency*Samples,1/2)*amp;   %triangular shape%
    case 5 
  soundVector = sin((frequency+2*pi*frequency).*sin(2*pi*4*Samples)*amp); %sine vibrato % 
    case 6
  %soundVector =(2*((sin((frequency)+Samples)>0)-1).*(0.6))*amp;   %PWM shape% 
  soundVector=amp*square(2*pi*frequency.*Samples,50);
      otherwise
 end 
% end



sound(soundVector, 1/SampleRate)

RecordOn = get(handles.Recording, 'Value');

if RecordOn == 1
  SoundVectorLong = handles.SoundVector;
  if SoundVectorLong == 0
    SoundVectorLong = soundVector;
  else
    SoundVectorLong = cat(2, SoundVectorLong, soundVector);
  end
  handles.SoundVector = SoundVectorLong;

  guidata(handles.figure1, handles);  
end
  
  
  
  

  
  
% --- Executes on button press in Playing.
function Playing_Callback(hObject, eventdata, handles)
% hObject    handle to Playing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SoundVector   = handles.SoundVector;
SampleRate    = handles.SampleRate;

sound(SoundVector, 1/SampleRate);

% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.SoundVector = 0;
guidata(handles.figure1, handles);

% --- Executes on button press in Note_1_4.
function Note_1_4_Callback(hObject, eventdata, handles)
% hObject    handle to Note_1_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Note_1_4
set(handles.Note_1_8, 'Value', 0);
set(handles.Note_1_4, 'Value', 1);
set(handles.Note_1_2, 'Value', 0);
set(handles.Note_1_1, 'Value', 0);

Value     = 172;
TimeValue = 60/Value;

handles.TimeValue = TimeValue;
guidata(handles.figure1, handles);


% --- Executes on button press in Note_1_2.
function Note_1_2_Callback(hObject, eventdata, handles)
% hObject    handle to Note_1_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Note_1_2
set(handles.Note_1_8, 'Value', 0);
set(handles.Note_1_4, 'Value', 0);
set(handles.Note_1_2, 'Value', 1);
set(handles.Note_1_1, 'Value', 0);

Value     = 172;
TimeValue = 60/Value*2;

handles.TimeValue = TimeValue;
guidata(handles.figure1, handles);

% --- Executes on button press in Note_1_8.
function Note_1_8_Callback(hObject, eventdata, handles)
% hObject    handle to Note_1_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Note_1_8

set(handles.Note_1_8, 'Value', 1);
set(handles.Note_1_4, 'Value', 0);
set(handles.Note_1_2, 'Value', 0);
set(handles.Note_1_1, 'Value', 0);

Value     = 172;
TimeValue = (60/Value)/2;

handles.TimeValue = TimeValue;
guidata(handles.figure1, handles);
% --- Executes on button press in Note_1_1.
function Note_1_1_Callback(hObject, eventdata, handles)
% hObject    handle to Note_1_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Note_1_1
set(handles.Note_1_8, 'Value', 0);
set(handles.Note_1_4, 'Value', 1);
set(handles.Note_1_2, 'Value', 0);
set(handles.Note_1_1, 'Value', 0);

Value     = 172;
TimeValue = 60/Value*4;

handles.TimeValue = TimeValue;
guidata(handles.figure1, handles);

% --- Executes on button press in Save.
function Save_Callback(hObject, eventdata, handles)
% hObject    handle to Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SoundVector     = handles.SoundVector;
SampleRate      = handles.SampleRate;

if SoundVector == 0
    return;
else
  File_name = get(handles.File_name, 'String');

%   wavwrite(SoundVector, 1/SampleRate, 32, File_name);
  audiowrite(File_name , SoundVector , 1/SampleRate );

end

function File_name_Callback(hObject, eventdata, handles)
% hObject    handle to File_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of File_name as text
%        str2double(get(hObject,'String')) returns contents of File_name as a double


% --- Executes during object creation, after setting all properties.
function File_name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to File_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function Amplitude_Callback(hObject, eventdata, handles)
% hObject    handle to Amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
 

% --- Executes during object creation, after setting all properties.
function Amplitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
