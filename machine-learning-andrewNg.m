% Creator: Zhichuan Li
% Create Date: 2019-02-22
% Email: lizhichuan2012@gmail.com
% Description: <Machine learning> coursera course practise.

% 2019-02-22 Week 1: Linear Algebra Review

% Matrics and Vectors
% The ; denotes we are going back to a new row.
A = [1, 2, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12]

% Initialize a vector 
v = [1;2;3] 

% Get the dimension of the matrix A where m = rows and n = columns
[m,n] = size(A)

% You could also store it this way
dim_A = size(A)

% Get the dimension of the vector v 
dim_v = size(v)

% Now let's index into the 2nd row 3rd column of matrix A
A_23 = A(2,3)


% Addition and Scalar(real numbers) Multiplication
% Initialize matrix A and B 
A = [1, 2, 4; 5, 3, 2]
B = [1, 3, 4; 1, 1, 1]

% Initialize constant s 
s = 2

% See how element-wise addition works
add_AB = A + B 

% See how element-wise subtraction works
sub_AB = A - B

% See how scalar multiplication works
mult_As = A * s

% Divide A by s
div_As = A / s

% What happens if we have a Matrix + scalar?
add_As = A + s

% Matrix-Vector Multiplication: 
% An m x n matrix multiplied by an n x 1 vector results in an m x 1 vector.
% Initialize matrix A 
A = [1, 2, 3; 4, 5, 6;7, 8, 9;10 ,11, 12] 

% Initialize vector v 
v = [1; 1; 1] 

% Multiply A * v
Av = A * v

% Matrix-Matrix Multiplication
% Initialize a 3 by 2 matrix 
A = [1, 2; 3, 4;5, 6]

% Initialize a 2 by 1 matrix 
B = [1; 2] 

% We expect a resulting matrix of (3 by 2)*(2 by 1) = (3 by 1) 
mult_AB = A*B

% Make sure you understand why we got that result

% Matrix Multiplication Properties
% Matrices are not commutative: A?B?B?A
% Matrices are associative: (A?B)?C=A?(B?C)
% The identity matrix
% Initialize random matrices A and B 
A = [1,2;4,5]
B = [1,1;0,2]

% Initialize a 2 by 2 identity matrix
I = eye(2)

% The above notation is the same as I = [1,0;0,1]

% What happens when we multiply I*A ? 
IA = I*A 

% How about A*I ? 
AI = A*I 

% Compute A*B 
AB = A*B 

% Is it equal to B*A? 
BA = B*A 

% Note that IA = AI but AB != BA


% Inverse and Transpose
% Initialize matrix A 
A = [1,2,0;0,5,6;7,0,9]

% Transpose A 
A_trans = A' 

% Take the inverse of A 
A_inv = inv(A)

% What is A^(-1)*A? 
A_invA = inv(A)*A


%Octave/Matlab Tutorial lecture 5
A = [16, 2, 3, 13;5, 11, 10, 8; 9, 7, 6, 12; 4, 14, 15, 1]

B_1 = A(:,1:2)
B_2 = A(1:4, 1:2)
B_3 = A(0:2, 0:4)
B_4 = A(1:2, 1:4)

v = [1;2;3;4;5;6;7]
w = [-1;-2;-3;-4;-5;-6;-7]

sum_A = v' * w
sum_B = sum(v.*w)

X = [1,2,3,4,5,6,7;
     1,2,3,4,5,6,7;
     1,2,3,4,5,6,7;
     1,2,3,4,5,6,7;
     1,2,3,4,5,6,7;
     1,2,3,4,5,6,7;
     1,2,3,4,5,6,7
    ]

A = log(X)
B = X ^ 2
C = X + 1
D = X / 4

A = [1,2,3;
     1,2,3;
     1,2,3;
     1,2,3;
     1,2,3]
 B = [1,2,3,4,5;
      1,2,3,4,5;
      1,2,3,4,5
      ]
  
  C = A * B
  R = [1,0,0,0,0;
       0,1,0,0,0;
       0,0,1,0,0;
       0,0,0,1,0;
       0,0,0,0,1
       ]
  total = 0;
  for i = 1:5
      for j = 1:5
          if(R(i,j) == 1)
              total = total + C(i,j);
          end
      end
  end