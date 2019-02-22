% Creator: Zhichuan Li
% Create Date: 2018-11-05
% Email: lizhichuan2012@gmail.com
% Description: MATLAB official help document code examples

% Getting Started
% Learn the basics of MATLAB
% 
% Language Fundamentals
% Syntax, operators, data types, array indexing and manipulation
% 
% Mathematics
% Linear algebra, differentiation and integrals, Fourier transforms, 
% and other mathematics
% 
% Graphics
% Two- and three-dimensional plots, images, animation, visualization
% 
% Data Import and Analysis
% Import and export, preprocessing, visual exploration
% 
% Programming Scripts and Functions
% Program files, control flow, editing, debugging
% 
% App Building
% App development using App Designer, GUIDE, or a programmatic workflow
% 
% Advanced Software Development
% Object-oriented programming; code performance; unit testing; external 
% interfaces to Java® , C/C++, .NET and other languages
% 
% Desktop Environment
% Preferences and settings, platform differences
% 
% Supported Hardware
% Support for third-party hardware, such as webcam, Arduino®, 
% and Raspberry Pi™ hardware

%Getting Started with MATLAB

% 1: Destop Basics

% 2: Matrices and Arrays

% MATLAB: matrix laboratory
% All MATLAB variables are multidimensional arrays.

% Array Creation
a = [1 2 3 4];    % seperate elements with space
a2 = [1,2,3,4];   % seperate elements with comma (,)
% This type of array is a row vector

% Create a multiple rows matrix
b = [1 2 3; 4 5 6; 7 8 10];

% Create matrix using a function (ones, zeros, or rand)
z = zeros(5,1);     % create a 5-by-1 column vectors of zeros
z2 = rand(3);


% Matrix and Array Operations
result = b + 10;

% using a single quote (') to transpose a matrix
transposed_b = b';

% standard matrix multiplication using * operator.
p = b*inv(b);
% p is not a matrix of integer values, MATLAB stores numbers as
% floating-point values.

% format command
format long
p = b*inv(b);

% reset the display to shorter format
format short
p = b*inv(b);
% format only effects the display of numbers, not the way of saving.

% element-wise multiplication using .* operator
p = b.*b;

% element-wise power using .^ operator
p = b.^3;


% Concatenation

% Concatenation is the process of joining arrays to make larger ones.
B = [b, b];     % horizontal concatenation using commas
B = [b; b];     % vertical concatenation using semicolons


% Complex Numbers

% Complex numbers have both real and imaginary parts
S = sqrt(-1);

% Using i or j to represent the imaginary part of complex numbers
c = [3+4i, 4+3j; -1i, 10j];


% 3 Array Indexing

% Every variable in MATLAB@ is an array that can hold many numbers.
A = magic(4);

% Using index to access selected elements
% specify row and column subscripts
selected_element = A(4,2);      
% using a single subscript that traversed down each column in order
selected_element2 = A(8);    % also called linear indexing    

% index out of bounds
test = A(4,5);      % MATLAB will throw error
% Index in position 2 exceeds array bounds (must not exceed 4).

% assign elments outside the current dimensions
A(4,5) = 17;

% select multiple elements of an array using colon (:)
A(1:3,2)

A(3,:)      % colon alone, specifies all the elements in that dimension.

% using colon to create an equally spaced vector of values
B = 0:10:100;
% 0    10    20    30    40    50    60    70    80    90   100
C = 0:8;    % omit the middle step, MATLAB uses default step of 1
% 0     1     2     3     4     5     6     7     8


% 4: Workspace variables
A = magic(4);
B = rand(3,5,2);

% view the contents of the workspace using whos.
whos

% using save command to save workspace varialbes
save myfile.mat

% restore data from a MAT-file into the workspace
load myfile.mat


% 5: Text and Characters

myText = 'Hello, world';
myText2 = "Hello world 2";

otherText = 'You''re right';
% 'You're right'

whos myText

% concatenate character arrays with square brackets
longText = [myText, '-', otherText];
% 'Hello, world-You're right'

% using function to convert numeric values to characters
f = 71;
c = (f-32)/1.8;
tempText = ['Temperature is ', num2str(c), 'C'];
% 'Temperature is 21.6667C'

% 6: Calling Functions

% MATLAB provides a large number of functions that perform computational
% tasks.

A = [1 3 5];
max_A = max(A);
% 5

B = [10 6 4];
max(A, B)
% 10 6 5

[maxA, location] = max(A);

% Enclose any character inputs in single quotes
disp('hello world');
% hello world

% clc function: clears the Command Window
clc


% 7: 2-D and 3-D Plots

% Line Plots

% using plot function to create two-dimensional line plots
x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y);

% label the axes and add a title.
xlabel('x');
ylabel('sin(x)');
title('Plot of the Sine Function');

% plot using a red dashed line
plot(x,y,'r--');

% hold on and hold off
x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y);

hold on

y2 = cos(x);
plot(x, y2, ':');
legend('sin', 'cos')

hold off

% 3-D Plots

% Three-dimensional plots typically display a surface defined by a function
% in two variables, z = f(x,y)

[X,Y] = meshgrid(-1:.2:2);
Z = X .* exp(-X.^2 - Y.^2);

% create a surface plot
surf(X,Y,Z)

% Subplots

% using subplot function display multiple plots in different subregions of
% the same window
t = 0:pi/10:2*pi;
[X,Y,Z] = cylinder(4*cos(t));
subplot(2,2,1); mesh(X); title('X');
subplot(2,2,2); mesh(Y); title('Y');
subplot(2,2,3); mesh(Z); title('Z');
subplot(2,2,4); mesh(X,Y,Z); title('X,Y,Z');


% 8: Programming and Scripts

% A script is a file with a .m extensions that contains multiple sequential
% lines of MATLAB commands and functions calls.

% run a script by typing its name at the command line.

% create a script: using edit command
edit plotrand

% after complete edit script, save it and run it by input the name in
% command line
plotrand

%Loops and Conditional Statements

% for, while, if and switch
% see calcmean.m

% Note: to run a script, the file must be in the current folder or in a
% folder on the search path.

% 9: Help and Documentation

% using doc command to open the function documentation in a separate window 
doc mean

% Display function hints
mean(


% Language Fundamentals

% 1: Entering Commands

% Functions
% ans          Most recent answer
% clc          Clear Command Window
% diary        Save Command Window text to file
% format       Set Command Window output display format
% home         Send cursor home
% iskeyword    Determine whether input is MATLAB keyword
% more         Control paged output for Command Window

% Enter Statements in Command Window

% Enter more than one statement on the same line
A = magic(5), B = ones(5) * 4.7; C = A./B
% commands end with a semicolon do not display their results

% using up- and down-arrow keys, to recall previous ines in Command Window
% Use Escape(Esc) key to clear a command without executing it.

% Format Output

% Format Line Spacing in Output
format loose
format compact

% Format Floating-Point Numbers
format short
format short e
format long

% View Output by Page
more on
more off

% Clear the Command Window
clc


% Call Functions
A = [1 3 5];
B = [10 6 4];

max(A)
max(A,B)
maxA = max(A);
[maxA, location] = max(A);

% Continue Long Statments on Multiple Lines
% using ellipsis (...)
s = 1 - 1/2 + 1/3 - 1/4 + 1/5 ...
    -1/6 + 1/7 - 1/8 + 1/9;

mytext = ['Accelerating the pace of ' ...
    'engineering and science'];

x = [1.23...
    4.56];
%is the same as
x = [1.23 4.56];

% Rerun Favorite Commands
% On the Home tab, in the Code section, click Favorites and then click New Favorite.

% Stop Execution
% using Ctrl+C or Ctrl+Break

% 2: Matrics and Arrays

% Create and Combine Arrays

% zeros    Create array of all zeros
% ones     Create array of all ones
% rand     Uniformly distributed random numbers
% true     Logical 1(true)
% false    Logical 0(false)
% eye      Identity matrix
% diag     Create diagonal matrix or get diagonal elements of matrix
% blkdiag  Construct block diagonal matrix from input arguments
% cat      Concatenate arrays along speficied dimension
% horzcat  Concatenate arrays horizontally
% vertcat  Concatenate arrays vertically
% repelem  Repeat coples of array elements
% repmat   Repeat copies of array

% Create Grids

% linspace  Generate linearly spaced vector
% logspace  Generate logarithmically spaced vector
% freqspace Frequency spacing for frequency response
% meshgrid  2-D and 3-D grids
% ndgrid    Rectangular grid in N-D space

% Determine Size and Shape

% length    Lengh of largest array dimension
% size      Array size
% ndims     Number of array dimensions
% numel     Number of array elements
% isscalar  Determine whether input is scalar
% isvector  Determine whether input is vector
% ismatrix  Determine whether input is matrix
% isrow     Determine whether input is row vector
% iscolumn  Determine whether input is column vector
% isempty   Determine whether array is empty

% Reshape and Rearrange

% sort          Sort array elements
% sortrows      Sort rows of matrix or table
% issorted      Determine if array is sorted
% issortedrows  Determine if matrix or table rows are sorted
% topkrows      Top rows in sorted order
% flip          Flip order of elements
% fliplr        Flip array left to right
% flipud        Flip array up to down
% rot90         Rotate array 90 degrees
% transpose     Transpose vecor or matrix
% ctranspose    Complex conjugate transpose
% permute       Rearrange dimensions of N-D array
% ipermute      Inverse permute dimensions of N-D array
% circshift     Shift array circularly
% shiftdim      Shift dimensions
% reshape       Reshape array
% squeeze       Remove singleton dimensions

% Indexing

% colon         Vector creation, array subscripting, and for-loop iteration
% end           Terminate block of code, or indicate last array index
% ind2sub       Subscripts from linear index
% sub2ind       Convert subscripts to linear indices















% 3: Operators and Elementary Operations

% 4: Data Types



