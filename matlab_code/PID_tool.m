%global GUI_data

function varargout = PID_tool(varargin)
% PID_TOOL MATLAB code for PID_tool.fig
%      PID_TOOL, by itself, creates a new PID_TOOL or raises the existing
%      singleton*.
%
%      H = PID_TOOL returns the handle to a new PID_TOOL or the handle to
%      the existing singleton*.
%
%      PID_TOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PID_TOOL.M with the given input arguments.
%
%      PID_TOOL('Property','Value',...) creates a new PID_TOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PID_tool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PID_tool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PID_tool

% Last Modified by GUIDE v2.5 28-Apr-2017 10:47:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @PID_tool_OpeningFcn, ...
    'gui_OutputFcn',  @PID_tool_OutputFcn, ...
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


% --- Executes just before PID_tool is made visible.
function PID_tool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PID_tool (see VARARGIN)

% Choose default command line output for PID_tool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PID_tool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PID_tool_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function field_tf_num_Callback(hObject, eventdata, handles)
% hObject    handle to field_tf_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of field_tf_num as text
%        str2double(get(hObject,'String')) returns contents of field_tf_num as a double


% --- Executes during object creation, after setting all properties.
function field_tf_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to field_tf_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function field_tf_den_Callback(hObject, eventdata, handles)
% hObject    handle to field_tf_den (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of field_tf_den as text
%        str2double(get(hObject,'String')) returns contents of field_tf_den as a double


% --- Executes during object creation, after setting all properties.
function field_tf_den_CreateFcn(hObject, eventdata, handles)
% hObject    handle to field_tf_den (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function field_k_Callback(hObject, eventdata, handles)
% hObject    handle to field_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of field_k as text
%        str2double(get(hObject,'String')) returns contents of field_k as a double


% --- Executes during object creation, after setting all properties.
function field_k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to field_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function field_z1_Callback(hObject, eventdata, handles)
% hObject    handle to field_z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of field_z1 as text
%        str2double(get(hObject,'String')) returns contents of field_z1 as a double


% --- Executes during object creation, after setting all properties.
function field_z1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to field_z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function field_z2_Callback(hObject, eventdata, handles)
% hObject    handle to field_z2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of field_z2 as text
%        str2double(get(hObject,'String')) returns contents of field_z2 as a double


% --- Executes during object creation, after setting all properties.
function field_z2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to field_z2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in button_go.
function button_go_Callback(hObject, eventdata, handles)
% hObject    handle to button_go (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get_global_data(handles);


function field_P_Callback(hObject, eventdata, handles)
% hObject    handle to field_P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of field_P as text
%        str2double(get(hObject,'String')) returns contents of field_P as a double


% --- Executes during object creation, after setting all properties.
function field_P_CreateFcn(hObject, eventdata, handles)
% hObject    handle to field_P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function field_I_Callback(hObject, eventdata, handles)
% hObject    handle to field_I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of field_I as text
%        str2double(get(hObject,'String')) returns contents of field_I as a double


% --- Executes during object creation, after setting all properties.
function field_I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to field_I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function field_D_Callback(hObject, eventdata, handles)
% hObject    handle to field_D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of field_D as text
%        str2double(get(hObject,'String')) returns contents of field_D as a double


% --- Executes during object creation, after setting all properties.
function field_D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to field_D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function get_global_data(handles)

global GUI_data;
% get data from all the handles and stash it in the GUI_data object

%list of all the handles we need data from:
%field_tf_num
%field_tf_den
%field_k
%field_z1
%field_z2
%get the following values from transfer function
GUI_data.handles = handles;
GUI_data.K = str2num(get(handles.field_k,'string'));
GUI_data.Zero1 = str2num(get(handles.field_z1,'string'));
GUI_data.Zero2 = str2num(get(handles.field_z2,'string'));
GUI_data.P = str2num(get(handles.field_P,'string'));
GUI_data.I = str2num(get(handles.field_I,'string'));
GUI_data.D = str2num(get(handles.field_D,'string'));
GUI_data.plant_tf_num = str2num(get(handles.field_tf_num,'string'));
GUI_data.plant_tf_den = str2num(get(handles.field_tf_den,'string'));

%the following need to get computed
GUI_data.system_tf_num = [1];
GUI_data.system_tf_den = [1 1 1];
GUI_data.system_poles = [1, 1];
GUI_data.system_zeros = [1 1];
disp('Go button pressed');
