function varargout = SliderFixCalculator(varargin)
% SLIDERFIXCALCULATOR MATLAB code for SliderFixCalculator.fig
%      SLIDERFIXCALCULATOR, by itself, creates a new SLIDERFIXCALCULATOR or raises the existing
%      singleton*.
%
%      H = SLIDERFIXCALCULATOR returns the handle to a new SLIDERFIXCALCULATOR or the handle to
%      the existing singleton*.
%
%      SLIDERFIXCALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SLIDERFIXCALCULATOR.M with the given input arguments.
%
%      SLIDERFIXCALCULATOR('Property','Value',...) creates a new SLIDERFIXCALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SliderFixCalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SliderFixCalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SliderFixCalculator

% Last Modified by GUIDE v2.5 20-Nov-2016 10:00:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SliderFixCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @SliderFixCalculator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before SliderFixCalculator is made visible.
function SliderFixCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SliderFixCalculator (see VARARGIN)

% Choose default command line output for SliderFixCalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SliderFixCalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SliderFixCalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bpm1 = str2double(get(handles.bpm1,'string'));
ticks1 = str2double(get(handles.ticks1,'string'));
sv1 = str2double(get(handles.sv1,'string'));
bpm2 = str2double(get(handles.bpm2,'string'));
ticks2 = str2double(get(handles.ticks2,'string'));
sv2 = sv1*(bpm1*ticks1+bpm2*ticks2)/bpm1/(ticks1+ticks2);
set(handles.sv2,'string',num2str(sv2));
set(handles.np_sv2,'string',num2str(-100.0/sv2));


function ticks2_Callback(hObject, eventdata, handles)
% hObject    handle to ticks2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ticks2 as text
%        str2double(get(hObject,'String')) returns contents of ticks2 as a double


% --- Executes during object creation, after setting all properties.
function ticks2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ticks2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ticks1_Callback(hObject, eventdata, handles)
% hObject    handle to ticks1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ticks1 as text
%        str2double(get(hObject,'String')) returns contents of ticks1 as a double


% --- Executes during object creation, after setting all properties.
function ticks1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ticks1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bpm2_Callback(hObject, eventdata, handles)
% hObject    handle to bpm2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bpm2 as text
%        str2double(get(hObject,'String')) returns contents of bpm2 as a double


% --- Executes during object creation, after setting all properties.
function bpm2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bpm2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bpm1_Callback(hObject, eventdata, handles)
% hObject    handle to bpm1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bpm1 as text
%        str2double(get(hObject,'String')) returns contents of bpm1 as a double


% --- Executes during object creation, after setting all properties.
function bpm1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bpm1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sv1_Callback(hObject, eventdata, handles)
% hObject    handle to sv1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sv1 as text
%        str2double(get(hObject,'String')) returns contents of sv1 as a double


% --- Executes during object creation, after setting all properties.
function sv1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sv1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
