ªü
ùÊ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68¸â
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
¢
#gru_forcaster_2/gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*4
shared_name%#gru_forcaster_2/gru/gru_cell/kernel

7gru_forcaster_2/gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOp#gru_forcaster_2/gru/gru_cell/kernel*
_output_shapes

:`*
dtype0
¶
-gru_forcaster_2/gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: `*>
shared_name/-gru_forcaster_2/gru/gru_cell/recurrent_kernel
¯
Agru_forcaster_2/gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp-gru_forcaster_2/gru/gru_cell/recurrent_kernel*
_output_shapes

: `*
dtype0

!gru_forcaster_2/gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*2
shared_name#!gru_forcaster_2/gru/gru_cell/bias

5gru_forcaster_2/gru/gru_cell/bias/Read/ReadVariableOpReadVariableOp!gru_forcaster_2/gru/gru_cell/bias*
_output_shapes

:`*
dtype0

gru_forcaster_2/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name gru_forcaster_2/dense_2/kernel

2gru_forcaster_2/dense_2/kernel/Read/ReadVariableOpReadVariableOpgru_forcaster_2/dense_2/kernel*
_output_shapes

: *
dtype0

gru_forcaster_2/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namegru_forcaster_2/dense_2/bias

0gru_forcaster_2/dense_2/bias/Read/ReadVariableOpReadVariableOpgru_forcaster_2/dense_2/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
°
*Adam/gru_forcaster_2/gru/gru_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*;
shared_name,*Adam/gru_forcaster_2/gru/gru_cell/kernel/m
©
>Adam/gru_forcaster_2/gru/gru_cell/kernel/m/Read/ReadVariableOpReadVariableOp*Adam/gru_forcaster_2/gru/gru_cell/kernel/m*
_output_shapes

:`*
dtype0
Ä
4Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: `*E
shared_name64Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/m
½
HAdam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp4Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/m*
_output_shapes

: `*
dtype0
¬
(Adam/gru_forcaster_2/gru/gru_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*9
shared_name*(Adam/gru_forcaster_2/gru/gru_cell/bias/m
¥
<Adam/gru_forcaster_2/gru/gru_cell/bias/m/Read/ReadVariableOpReadVariableOp(Adam/gru_forcaster_2/gru/gru_cell/bias/m*
_output_shapes

:`*
dtype0
¦
%Adam/gru_forcaster_2/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%Adam/gru_forcaster_2/dense_2/kernel/m

9Adam/gru_forcaster_2/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp%Adam/gru_forcaster_2/dense_2/kernel/m*
_output_shapes

: *
dtype0

#Adam/gru_forcaster_2/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/gru_forcaster_2/dense_2/bias/m

7Adam/gru_forcaster_2/dense_2/bias/m/Read/ReadVariableOpReadVariableOp#Adam/gru_forcaster_2/dense_2/bias/m*
_output_shapes
:*
dtype0
°
*Adam/gru_forcaster_2/gru/gru_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*;
shared_name,*Adam/gru_forcaster_2/gru/gru_cell/kernel/v
©
>Adam/gru_forcaster_2/gru/gru_cell/kernel/v/Read/ReadVariableOpReadVariableOp*Adam/gru_forcaster_2/gru/gru_cell/kernel/v*
_output_shapes

:`*
dtype0
Ä
4Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: `*E
shared_name64Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/v
½
HAdam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp4Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/v*
_output_shapes

: `*
dtype0
¬
(Adam/gru_forcaster_2/gru/gru_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:`*9
shared_name*(Adam/gru_forcaster_2/gru/gru_cell/bias/v
¥
<Adam/gru_forcaster_2/gru/gru_cell/bias/v/Read/ReadVariableOpReadVariableOp(Adam/gru_forcaster_2/gru/gru_cell/bias/v*
_output_shapes

:`*
dtype0
¦
%Adam/gru_forcaster_2/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%Adam/gru_forcaster_2/dense_2/kernel/v

9Adam/gru_forcaster_2/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp%Adam/gru_forcaster_2/dense_2/kernel/v*
_output_shapes

: *
dtype0

#Adam/gru_forcaster_2/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/gru_forcaster_2/dense_2/bias/v

7Adam/gru_forcaster_2/dense_2/bias/v/Read/ReadVariableOpReadVariableOp#Adam/gru_forcaster_2/dense_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ô/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¯/
value¥/B¢/ B/

layer-0
layer_with_weights-0
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
* 
·
recurrent_layer
output_layer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

iter

beta_1

beta_2
	decay
learning_ratemZm[m\m]m^v_v`vavbvc*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
°
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

#serving_default* 
Á
$cell
%
state_spec
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*_random_generator
+__call__
*,&call_and_return_all_conditional_losses*
¦

kernel
bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 

3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#gru_forcaster_2/gru/gru_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-gru_forcaster_2/gru/gru_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!gru_forcaster_2/gru/gru_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEgru_forcaster_2/dense_2/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEgru_forcaster_2/dense_2/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

80
91*
* 
* 
* 
Ó

kernel
recurrent_kernel
bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>_random_generator
?__call__
*@&call_and_return_all_conditional_losses*
* 

0
1
2*

0
1
2*
* 


Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
&	variables
'trainable_variables
(regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
* 

0
1*

0
1*
* 

Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
* 

0
1*
* 
* 
* 
8
	Ltotal
	Mcount
N	variables
O	keras_api*
H
	Ptotal
	Qcount
R
_fn_kwargs
S	variables
T	keras_api*

0
1
2*

0
1
2*
* 

Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
:	variables
;trainable_variables
<regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

$0*
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

N	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

P0
Q1*

S	variables*
* 
* 
* 
* 
* 

VARIABLE_VALUE*Adam/gru_forcaster_2/gru/gru_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE4Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/gru_forcaster_2/gru/gru_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE%Adam/gru_forcaster_2/dense_2/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adam/gru_forcaster_2/dense_2/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/gru_forcaster_2/gru/gru_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE4Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/gru_forcaster_2/gru/gru_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE%Adam/gru_forcaster_2/dense_2/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adam/gru_forcaster_2/dense_2/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_3Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
õ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3!gru_forcaster_2/gru/gru_cell/bias#gru_forcaster_2/gru/gru_cell/kernel-gru_forcaster_2/gru/gru_cell/recurrent_kernelgru_forcaster_2/dense_2/kernelgru_forcaster_2/dense_2/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_2523543
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
á
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp7gru_forcaster_2/gru/gru_cell/kernel/Read/ReadVariableOpAgru_forcaster_2/gru/gru_cell/recurrent_kernel/Read/ReadVariableOp5gru_forcaster_2/gru/gru_cell/bias/Read/ReadVariableOp2gru_forcaster_2/dense_2/kernel/Read/ReadVariableOp0gru_forcaster_2/dense_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp>Adam/gru_forcaster_2/gru/gru_cell/kernel/m/Read/ReadVariableOpHAdam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOp<Adam/gru_forcaster_2/gru/gru_cell/bias/m/Read/ReadVariableOp9Adam/gru_forcaster_2/dense_2/kernel/m/Read/ReadVariableOp7Adam/gru_forcaster_2/dense_2/bias/m/Read/ReadVariableOp>Adam/gru_forcaster_2/gru/gru_cell/kernel/v/Read/ReadVariableOpHAdam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOp<Adam/gru_forcaster_2/gru/gru_cell/bias/v/Read/ReadVariableOp9Adam/gru_forcaster_2/dense_2/kernel/v/Read/ReadVariableOp7Adam/gru_forcaster_2/dense_2/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_2524767
ü
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate#gru_forcaster_2/gru/gru_cell/kernel-gru_forcaster_2/gru/gru_cell/recurrent_kernel!gru_forcaster_2/gru/gru_cell/biasgru_forcaster_2/dense_2/kernelgru_forcaster_2/dense_2/biastotalcounttotal_1count_1*Adam/gru_forcaster_2/gru/gru_cell/kernel/m4Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/m(Adam/gru_forcaster_2/gru/gru_cell/bias/m%Adam/gru_forcaster_2/dense_2/kernel/m#Adam/gru_forcaster_2/dense_2/bias/m*Adam/gru_forcaster_2/gru/gru_cell/kernel/v4Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/v(Adam/gru_forcaster_2/gru/gru_cell/bias/v%Adam/gru_forcaster_2/dense_2/kernel/v#Adam/gru_forcaster_2/dense_2/bias/v*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_2524849¡ã
T
À
&gru_forcaster_2_gru_while_body_2523431D
@gru_forcaster_2_gru_while_gru_forcaster_2_gru_while_loop_counterJ
Fgru_forcaster_2_gru_while_gru_forcaster_2_gru_while_maximum_iterations)
%gru_forcaster_2_gru_while_placeholder+
'gru_forcaster_2_gru_while_placeholder_1+
'gru_forcaster_2_gru_while_placeholder_2C
?gru_forcaster_2_gru_while_gru_forcaster_2_gru_strided_slice_1_0
{gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor_0N
<gru_forcaster_2_gru_while_gru_cell_readvariableop_resource_0:`U
Cgru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource_0:`W
Egru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource_0: `&
"gru_forcaster_2_gru_while_identity(
$gru_forcaster_2_gru_while_identity_1(
$gru_forcaster_2_gru_while_identity_2(
$gru_forcaster_2_gru_while_identity_3(
$gru_forcaster_2_gru_while_identity_4A
=gru_forcaster_2_gru_while_gru_forcaster_2_gru_strided_slice_1}
ygru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensorL
:gru_forcaster_2_gru_while_gru_cell_readvariableop_resource:`S
Agru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource:`U
Cgru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource: `¢8gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp¢:gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp¢1gru_forcaster_2/gru/while/gru_cell/ReadVariableOp
Kgru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
=gru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor_0%gru_forcaster_2_gru_while_placeholderTgru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0®
1gru_forcaster_2/gru/while/gru_cell/ReadVariableOpReadVariableOp<gru_forcaster_2_gru_while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0¥
*gru_forcaster_2/gru/while/gru_cell/unstackUnpack9gru_forcaster_2/gru/while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num¼
8gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOpCgru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0í
)gru_forcaster_2/gru/while/gru_cell/MatMulMatMulDgru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItem:item:0@gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Ñ
*gru_forcaster_2/gru/while/gru_cell/BiasAddBiasAdd3gru_forcaster_2/gru/while/gru_cell/MatMul:product:03gru_forcaster_2/gru/while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`}
2gru_forcaster_2/gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
(gru_forcaster_2/gru/while/gru_cell/splitSplit;gru_forcaster_2/gru/while/gru_cell/split/split_dim:output:03gru_forcaster_2/gru/while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitÀ
:gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpEgru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0Ô
+gru_forcaster_2/gru/while/gru_cell/MatMul_1MatMul'gru_forcaster_2_gru_while_placeholder_2Bgru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Õ
,gru_forcaster_2/gru/while/gru_cell/BiasAdd_1BiasAdd5gru_forcaster_2/gru/while/gru_cell/MatMul_1:product:03gru_forcaster_2/gru/while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`}
(gru_forcaster_2/gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿ
4gru_forcaster_2/gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÒ
*gru_forcaster_2/gru/while/gru_cell/split_1SplitV5gru_forcaster_2/gru/while/gru_cell/BiasAdd_1:output:01gru_forcaster_2/gru/while/gru_cell/Const:output:0=gru_forcaster_2/gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitÉ
&gru_forcaster_2/gru/while/gru_cell/addAddV21gru_forcaster_2/gru/while/gru_cell/split:output:03gru_forcaster_2/gru/while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*gru_forcaster_2/gru/while/gru_cell/SigmoidSigmoid*gru_forcaster_2/gru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ë
(gru_forcaster_2/gru/while/gru_cell/add_1AddV21gru_forcaster_2/gru/while/gru_cell/split:output:13gru_forcaster_2/gru/while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
,gru_forcaster_2/gru/while/gru_cell/Sigmoid_1Sigmoid,gru_forcaster_2/gru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Æ
&gru_forcaster_2/gru/while/gru_cell/mulMul0gru_forcaster_2/gru/while/gru_cell/Sigmoid_1:y:03gru_forcaster_2/gru/while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Â
(gru_forcaster_2/gru/while/gru_cell/add_2AddV21gru_forcaster_2/gru/while/gru_cell/split:output:2*gru_forcaster_2/gru/while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'gru_forcaster_2/gru/while/gru_cell/ReluRelu,gru_forcaster_2/gru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
(gru_forcaster_2/gru/while/gru_cell/mul_1Mul.gru_forcaster_2/gru/while/gru_cell/Sigmoid:y:0'gru_forcaster_2_gru_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
(gru_forcaster_2/gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Â
&gru_forcaster_2/gru/while/gru_cell/subSub1gru_forcaster_2/gru/while/gru_cell/sub/x:output:0.gru_forcaster_2/gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
(gru_forcaster_2/gru/while/gru_cell/mul_2Mul*gru_forcaster_2/gru/while/gru_cell/sub:z:05gru_forcaster_2/gru/while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¿
(gru_forcaster_2/gru/while/gru_cell/add_3AddV2,gru_forcaster_2/gru/while/gru_cell/mul_1:z:0,gru_forcaster_2/gru/while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
>gru_forcaster_2/gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'gru_forcaster_2_gru_while_placeholder_1%gru_forcaster_2_gru_while_placeholder,gru_forcaster_2/gru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒa
gru_forcaster_2/gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_forcaster_2/gru/while/addAddV2%gru_forcaster_2_gru_while_placeholder(gru_forcaster_2/gru/while/add/y:output:0*
T0*
_output_shapes
: c
!gru_forcaster_2/gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :·
gru_forcaster_2/gru/while/add_1AddV2@gru_forcaster_2_gru_while_gru_forcaster_2_gru_while_loop_counter*gru_forcaster_2/gru/while/add_1/y:output:0*
T0*
_output_shapes
: 
"gru_forcaster_2/gru/while/IdentityIdentity#gru_forcaster_2/gru/while/add_1:z:0^gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: º
$gru_forcaster_2/gru/while/Identity_1IdentityFgru_forcaster_2_gru_while_gru_forcaster_2_gru_while_maximum_iterations^gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: 
$gru_forcaster_2/gru/while/Identity_2Identity!gru_forcaster_2/gru/while/add:z:0^gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: Õ
$gru_forcaster_2/gru/while/Identity_3IdentityNgru_forcaster_2/gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: :éèÒ±
$gru_forcaster_2/gru/while/Identity_4Identity,gru_forcaster_2/gru/while/gru_cell/add_3:z:0^gru_forcaster_2/gru/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru_forcaster_2/gru/while/NoOpNoOp9^gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp;^gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp2^gru_forcaster_2/gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Cgru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resourceEgru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource_0"
Agru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resourceCgru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource_0"z
:gru_forcaster_2_gru_while_gru_cell_readvariableop_resource<gru_forcaster_2_gru_while_gru_cell_readvariableop_resource_0"
=gru_forcaster_2_gru_while_gru_forcaster_2_gru_strided_slice_1?gru_forcaster_2_gru_while_gru_forcaster_2_gru_strided_slice_1_0"Q
"gru_forcaster_2_gru_while_identity+gru_forcaster_2/gru/while/Identity:output:0"U
$gru_forcaster_2_gru_while_identity_1-gru_forcaster_2/gru/while/Identity_1:output:0"U
$gru_forcaster_2_gru_while_identity_2-gru_forcaster_2/gru/while/Identity_2:output:0"U
$gru_forcaster_2_gru_while_identity_3-gru_forcaster_2/gru/while/Identity_3:output:0"U
$gru_forcaster_2_gru_while_identity_4-gru_forcaster_2/gru/while/Identity_4:output:0"ø
ygru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor{gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2t
8gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp8gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp2x
:gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp:gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp2f
1gru_forcaster_2/gru/while/gru_cell/ReadVariableOp1gru_forcaster_2/gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
¬^
´
.model_2_gru_forcaster_2_gru_while_body_2522142T
Pmodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_while_loop_counterZ
Vmodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_while_maximum_iterations1
-model_2_gru_forcaster_2_gru_while_placeholder3
/model_2_gru_forcaster_2_gru_while_placeholder_13
/model_2_gru_forcaster_2_gru_while_placeholder_2S
Omodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_strided_slice_1_0
model_2_gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_model_2_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor_0V
Dmodel_2_gru_forcaster_2_gru_while_gru_cell_readvariableop_resource_0:`]
Kmodel_2_gru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource_0:`_
Mmodel_2_gru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource_0: `.
*model_2_gru_forcaster_2_gru_while_identity0
,model_2_gru_forcaster_2_gru_while_identity_10
,model_2_gru_forcaster_2_gru_while_identity_20
,model_2_gru_forcaster_2_gru_while_identity_30
,model_2_gru_forcaster_2_gru_while_identity_4Q
Mmodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_strided_slice_1
model_2_gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_model_2_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensorT
Bmodel_2_gru_forcaster_2_gru_while_gru_cell_readvariableop_resource:`[
Imodel_2_gru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource:`]
Kmodel_2_gru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource: `¢@model_2/gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp¢Bmodel_2/gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp¢9model_2/gru_forcaster_2/gru/while/gru_cell/ReadVariableOp¤
Smodel_2/gru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ³
Emodel_2/gru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodel_2_gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_model_2_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor_0-model_2_gru_forcaster_2_gru_while_placeholder\model_2/gru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¾
9model_2/gru_forcaster_2/gru/while/gru_cell/ReadVariableOpReadVariableOpDmodel_2_gru_forcaster_2_gru_while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0µ
2model_2/gru_forcaster_2/gru/while/gru_cell/unstackUnpackAmodel_2/gru_forcaster_2/gru/while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
numÌ
@model_2/gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOpKmodel_2_gru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0
1model_2/gru_forcaster_2/gru/while/gru_cell/MatMulMatMulLmodel_2/gru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItem:item:0Hmodel_2/gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`é
2model_2/gru_forcaster_2/gru/while/gru_cell/BiasAddBiasAdd;model_2/gru_forcaster_2/gru/while/gru_cell/MatMul:product:0;model_2/gru_forcaster_2/gru/while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
:model_2/gru_forcaster_2/gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¤
0model_2/gru_forcaster_2/gru/while/gru_cell/splitSplitCmodel_2/gru_forcaster_2/gru/while/gru_cell/split/split_dim:output:0;model_2/gru_forcaster_2/gru/while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitÐ
Bmodel_2/gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpMmodel_2_gru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0ì
3model_2/gru_forcaster_2/gru/while/gru_cell/MatMul_1MatMul/model_2_gru_forcaster_2_gru_while_placeholder_2Jmodel_2/gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`í
4model_2/gru_forcaster_2/gru/while/gru_cell/BiasAdd_1BiasAdd=model_2/gru_forcaster_2/gru/while/gru_cell/MatMul_1:product:0;model_2/gru_forcaster_2/gru/while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
0model_2/gru_forcaster_2/gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿ
<model_2/gru_forcaster_2/gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿò
2model_2/gru_forcaster_2/gru/while/gru_cell/split_1SplitV=model_2/gru_forcaster_2/gru/while/gru_cell/BiasAdd_1:output:09model_2/gru_forcaster_2/gru/while/gru_cell/Const:output:0Emodel_2/gru_forcaster_2/gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitá
.model_2/gru_forcaster_2/gru/while/gru_cell/addAddV29model_2/gru_forcaster_2/gru/while/gru_cell/split:output:0;model_2/gru_forcaster_2/gru/while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ £
2model_2/gru_forcaster_2/gru/while/gru_cell/SigmoidSigmoid2model_2/gru_forcaster_2/gru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ã
0model_2/gru_forcaster_2/gru/while/gru_cell/add_1AddV29model_2/gru_forcaster_2/gru/while/gru_cell/split:output:1;model_2/gru_forcaster_2/gru/while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ §
4model_2/gru_forcaster_2/gru/while/gru_cell/Sigmoid_1Sigmoid4model_2/gru_forcaster_2/gru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Þ
.model_2/gru_forcaster_2/gru/while/gru_cell/mulMul8model_2/gru_forcaster_2/gru/while/gru_cell/Sigmoid_1:y:0;model_2/gru_forcaster_2/gru/while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ú
0model_2/gru_forcaster_2/gru/while/gru_cell/add_2AddV29model_2/gru_forcaster_2/gru/while/gru_cell/split:output:22model_2/gru_forcaster_2/gru/while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
/model_2/gru_forcaster_2/gru/while/gru_cell/ReluRelu4model_2/gru_forcaster_2/gru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ò
0model_2/gru_forcaster_2/gru/while/gru_cell/mul_1Mul6model_2/gru_forcaster_2/gru/while/gru_cell/Sigmoid:y:0/model_2_gru_forcaster_2_gru_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
0model_2/gru_forcaster_2/gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ú
.model_2/gru_forcaster_2/gru/while/gru_cell/subSub9model_2/gru_forcaster_2/gru/while/gru_cell/sub/x:output:06model_2/gru_forcaster_2/gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ü
0model_2/gru_forcaster_2/gru/while/gru_cell/mul_2Mul2model_2/gru_forcaster_2/gru/while/gru_cell/sub:z:0=model_2/gru_forcaster_2/gru/while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ×
0model_2/gru_forcaster_2/gru/while/gru_cell/add_3AddV24model_2/gru_forcaster_2/gru/while/gru_cell/mul_1:z:04model_2/gru_forcaster_2/gru/while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ±
Fmodel_2/gru_forcaster_2/gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/model_2_gru_forcaster_2_gru_while_placeholder_1-model_2_gru_forcaster_2_gru_while_placeholder4model_2/gru_forcaster_2/gru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒi
'model_2/gru_forcaster_2/gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :°
%model_2/gru_forcaster_2/gru/while/addAddV2-model_2_gru_forcaster_2_gru_while_placeholder0model_2/gru_forcaster_2/gru/while/add/y:output:0*
T0*
_output_shapes
: k
)model_2/gru_forcaster_2/gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :×
'model_2/gru_forcaster_2/gru/while/add_1AddV2Pmodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_while_loop_counter2model_2/gru_forcaster_2/gru/while/add_1/y:output:0*
T0*
_output_shapes
: ­
*model_2/gru_forcaster_2/gru/while/IdentityIdentity+model_2/gru_forcaster_2/gru/while/add_1:z:0'^model_2/gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: Ú
,model_2/gru_forcaster_2/gru/while/Identity_1IdentityVmodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_while_maximum_iterations'^model_2/gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: ­
,model_2/gru_forcaster_2/gru/while/Identity_2Identity)model_2/gru_forcaster_2/gru/while/add:z:0'^model_2/gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: í
,model_2/gru_forcaster_2/gru/while/Identity_3IdentityVmodel_2/gru_forcaster_2/gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^model_2/gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: :éèÒÉ
,model_2/gru_forcaster_2/gru/while/Identity_4Identity4model_2/gru_forcaster_2/gru/while/gru_cell/add_3:z:0'^model_2/gru_forcaster_2/gru/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¬
&model_2/gru_forcaster_2/gru/while/NoOpNoOpA^model_2/gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOpC^model_2/gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp:^model_2/gru_forcaster_2/gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Kmodel_2_gru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resourceMmodel_2_gru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource_0"
Imodel_2_gru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resourceKmodel_2_gru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource_0"
Bmodel_2_gru_forcaster_2_gru_while_gru_cell_readvariableop_resourceDmodel_2_gru_forcaster_2_gru_while_gru_cell_readvariableop_resource_0"a
*model_2_gru_forcaster_2_gru_while_identity3model_2/gru_forcaster_2/gru/while/Identity:output:0"e
,model_2_gru_forcaster_2_gru_while_identity_15model_2/gru_forcaster_2/gru/while/Identity_1:output:0"e
,model_2_gru_forcaster_2_gru_while_identity_25model_2/gru_forcaster_2/gru/while/Identity_2:output:0"e
,model_2_gru_forcaster_2_gru_while_identity_35model_2/gru_forcaster_2/gru/while/Identity_3:output:0"e
,model_2_gru_forcaster_2_gru_while_identity_45model_2/gru_forcaster_2/gru/while/Identity_4:output:0" 
Mmodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_strided_slice_1Omodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_strided_slice_1_0"
model_2_gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_model_2_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensormodel_2_gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_model_2_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2
@model_2/gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp@model_2/gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp2
Bmodel_2/gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOpBmodel_2/gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp2v
9model_2/gru_forcaster_2/gru/while/gru_cell/ReadVariableOp9model_2/gru_forcaster_2/gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 

µ
%__inference_gru_layer_call_fn_2523913
inputs_0
unknown:`
	unknown_0:`
	unknown_1: `
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2522566o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
T
À
&gru_forcaster_2_gru_while_body_2523272D
@gru_forcaster_2_gru_while_gru_forcaster_2_gru_while_loop_counterJ
Fgru_forcaster_2_gru_while_gru_forcaster_2_gru_while_maximum_iterations)
%gru_forcaster_2_gru_while_placeholder+
'gru_forcaster_2_gru_while_placeholder_1+
'gru_forcaster_2_gru_while_placeholder_2C
?gru_forcaster_2_gru_while_gru_forcaster_2_gru_strided_slice_1_0
{gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor_0N
<gru_forcaster_2_gru_while_gru_cell_readvariableop_resource_0:`U
Cgru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource_0:`W
Egru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource_0: `&
"gru_forcaster_2_gru_while_identity(
$gru_forcaster_2_gru_while_identity_1(
$gru_forcaster_2_gru_while_identity_2(
$gru_forcaster_2_gru_while_identity_3(
$gru_forcaster_2_gru_while_identity_4A
=gru_forcaster_2_gru_while_gru_forcaster_2_gru_strided_slice_1}
ygru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensorL
:gru_forcaster_2_gru_while_gru_cell_readvariableop_resource:`S
Agru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource:`U
Cgru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource: `¢8gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp¢:gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp¢1gru_forcaster_2/gru/while/gru_cell/ReadVariableOp
Kgru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
=gru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor_0%gru_forcaster_2_gru_while_placeholderTgru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0®
1gru_forcaster_2/gru/while/gru_cell/ReadVariableOpReadVariableOp<gru_forcaster_2_gru_while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0¥
*gru_forcaster_2/gru/while/gru_cell/unstackUnpack9gru_forcaster_2/gru/while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num¼
8gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOpCgru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0í
)gru_forcaster_2/gru/while/gru_cell/MatMulMatMulDgru_forcaster_2/gru/while/TensorArrayV2Read/TensorListGetItem:item:0@gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Ñ
*gru_forcaster_2/gru/while/gru_cell/BiasAddBiasAdd3gru_forcaster_2/gru/while/gru_cell/MatMul:product:03gru_forcaster_2/gru/while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`}
2gru_forcaster_2/gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
(gru_forcaster_2/gru/while/gru_cell/splitSplit;gru_forcaster_2/gru/while/gru_cell/split/split_dim:output:03gru_forcaster_2/gru/while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitÀ
:gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpEgru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0Ô
+gru_forcaster_2/gru/while/gru_cell/MatMul_1MatMul'gru_forcaster_2_gru_while_placeholder_2Bgru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Õ
,gru_forcaster_2/gru/while/gru_cell/BiasAdd_1BiasAdd5gru_forcaster_2/gru/while/gru_cell/MatMul_1:product:03gru_forcaster_2/gru/while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`}
(gru_forcaster_2/gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿ
4gru_forcaster_2/gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÒ
*gru_forcaster_2/gru/while/gru_cell/split_1SplitV5gru_forcaster_2/gru/while/gru_cell/BiasAdd_1:output:01gru_forcaster_2/gru/while/gru_cell/Const:output:0=gru_forcaster_2/gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitÉ
&gru_forcaster_2/gru/while/gru_cell/addAddV21gru_forcaster_2/gru/while/gru_cell/split:output:03gru_forcaster_2/gru/while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*gru_forcaster_2/gru/while/gru_cell/SigmoidSigmoid*gru_forcaster_2/gru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ë
(gru_forcaster_2/gru/while/gru_cell/add_1AddV21gru_forcaster_2/gru/while/gru_cell/split:output:13gru_forcaster_2/gru/while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
,gru_forcaster_2/gru/while/gru_cell/Sigmoid_1Sigmoid,gru_forcaster_2/gru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Æ
&gru_forcaster_2/gru/while/gru_cell/mulMul0gru_forcaster_2/gru/while/gru_cell/Sigmoid_1:y:03gru_forcaster_2/gru/while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Â
(gru_forcaster_2/gru/while/gru_cell/add_2AddV21gru_forcaster_2/gru/while/gru_cell/split:output:2*gru_forcaster_2/gru/while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'gru_forcaster_2/gru/while/gru_cell/ReluRelu,gru_forcaster_2/gru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
(gru_forcaster_2/gru/while/gru_cell/mul_1Mul.gru_forcaster_2/gru/while/gru_cell/Sigmoid:y:0'gru_forcaster_2_gru_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
(gru_forcaster_2/gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Â
&gru_forcaster_2/gru/while/gru_cell/subSub1gru_forcaster_2/gru/while/gru_cell/sub/x:output:0.gru_forcaster_2/gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ä
(gru_forcaster_2/gru/while/gru_cell/mul_2Mul*gru_forcaster_2/gru/while/gru_cell/sub:z:05gru_forcaster_2/gru/while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¿
(gru_forcaster_2/gru/while/gru_cell/add_3AddV2,gru_forcaster_2/gru/while/gru_cell/mul_1:z:0,gru_forcaster_2/gru/while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
>gru_forcaster_2/gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'gru_forcaster_2_gru_while_placeholder_1%gru_forcaster_2_gru_while_placeholder,gru_forcaster_2/gru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒa
gru_forcaster_2/gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_forcaster_2/gru/while/addAddV2%gru_forcaster_2_gru_while_placeholder(gru_forcaster_2/gru/while/add/y:output:0*
T0*
_output_shapes
: c
!gru_forcaster_2/gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :·
gru_forcaster_2/gru/while/add_1AddV2@gru_forcaster_2_gru_while_gru_forcaster_2_gru_while_loop_counter*gru_forcaster_2/gru/while/add_1/y:output:0*
T0*
_output_shapes
: 
"gru_forcaster_2/gru/while/IdentityIdentity#gru_forcaster_2/gru/while/add_1:z:0^gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: º
$gru_forcaster_2/gru/while/Identity_1IdentityFgru_forcaster_2_gru_while_gru_forcaster_2_gru_while_maximum_iterations^gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: 
$gru_forcaster_2/gru/while/Identity_2Identity!gru_forcaster_2/gru/while/add:z:0^gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: Õ
$gru_forcaster_2/gru/while/Identity_3IdentityNgru_forcaster_2/gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_forcaster_2/gru/while/NoOp*
T0*
_output_shapes
: :éèÒ±
$gru_forcaster_2/gru/while/Identity_4Identity,gru_forcaster_2/gru/while/gru_cell/add_3:z:0^gru_forcaster_2/gru/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru_forcaster_2/gru/while/NoOpNoOp9^gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp;^gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp2^gru_forcaster_2/gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Cgru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resourceEgru_forcaster_2_gru_while_gru_cell_matmul_1_readvariableop_resource_0"
Agru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resourceCgru_forcaster_2_gru_while_gru_cell_matmul_readvariableop_resource_0"z
:gru_forcaster_2_gru_while_gru_cell_readvariableop_resource<gru_forcaster_2_gru_while_gru_cell_readvariableop_resource_0"
=gru_forcaster_2_gru_while_gru_forcaster_2_gru_strided_slice_1?gru_forcaster_2_gru_while_gru_forcaster_2_gru_strided_slice_1_0"Q
"gru_forcaster_2_gru_while_identity+gru_forcaster_2/gru/while/Identity:output:0"U
$gru_forcaster_2_gru_while_identity_1-gru_forcaster_2/gru/while/Identity_1:output:0"U
$gru_forcaster_2_gru_while_identity_2-gru_forcaster_2/gru/while/Identity_2:output:0"U
$gru_forcaster_2_gru_while_identity_3-gru_forcaster_2/gru/while/Identity_3:output:0"U
$gru_forcaster_2_gru_while_identity_4-gru_forcaster_2/gru/while/Identity_4:output:0"ø
ygru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor{gru_forcaster_2_gru_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_2_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2t
8gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp8gru_forcaster_2/gru/while/gru_cell/MatMul/ReadVariableOp2x
:gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp:gru_forcaster_2/gru/while/gru_cell/MatMul_1/ReadVariableOp2f
1gru_forcaster_2/gru/while/gru_cell/ReadVariableOp1gru_forcaster_2/gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
°

Ö
*__inference_gru_cell_layer_call_fn_2524580

inputs
states_0
unknown:`
	unknown_0:`
	unknown_1: `
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2522307o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0
Ô
î
)__inference_model_2_layer_call_fn_2523142
input_3
unknown:`
	unknown_0:`
	unknown_1: `
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_2523114o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
ß
¯
while_cond_2522858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2522858___redundant_placeholder05
1while_while_cond_2522858___redundant_placeholder15
1while_while_cond_2522858___redundant_placeholder25
1while_while_cond_2522858___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ä
ö
1__inference_gru_forcaster_2_layer_call_fn_2523018
input_1
unknown:`
	unknown_0:`
	unknown_1: `
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2522990o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
á
õ
1__inference_gru_forcaster_2_layer_call_fn_2523573

inputs
unknown:`
	unknown_0:`
	unknown_1: `
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2522990o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦K
ñ
@__inference_gru_layer_call_and_return_conditional_losses_2522948

inputs2
 gru_cell_readvariableop_resource:`9
'gru_cell_matmul_readvariableop_resource:`;
)gru_cell_matmul_1_readvariableop_resource: `
identity¢gru_cell/MatMul/ReadVariableOp¢ gru_cell/MatMul_1/ReadVariableOp¢gru_cell/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿe
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿê
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2522859*
condR
while_cond_2522858*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ö
E__inference_gru_cell_layer_call_and_return_conditional_losses_2524633

inputs
states_0)
readvariableop_resource:`0
matmul_readvariableop_resource:`2
 matmul_1_readvariableop_resource: `
identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:`*
dtype0_
unstackUnpackReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
numt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:`*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`h
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`l
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mul_1MulSigmoid:y:0states_0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ : : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0
;
è
while_body_2524305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:`A
/while_gru_cell_matmul_readvariableop_resource_0:`C
1while_gru_cell_matmul_1_readvariableop_resource_0: `
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:`?
-while_gru_cell_matmul_readvariableop_resource:`A
/while_gru_cell_matmul_1_readvariableop_resource: `¢$while/gru_cell/MatMul/ReadVariableOp¢&while/gru_cell/MatMul_1/ReadVariableOp¢while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÐ
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿk
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒu
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
ïn
ó
D__inference_model_2_layer_call_and_return_conditional_losses_2523367

inputsF
4gru_forcaster_2_gru_gru_cell_readvariableop_resource:`M
;gru_forcaster_2_gru_gru_cell_matmul_readvariableop_resource:`O
=gru_forcaster_2_gru_gru_cell_matmul_1_readvariableop_resource: `H
6gru_forcaster_2_dense_2_matmul_readvariableop_resource: E
7gru_forcaster_2_dense_2_biasadd_readvariableop_resource:
identity¢.gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp¢-gru_forcaster_2/dense_2/MatMul/ReadVariableOp¢2gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp¢4gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp¢+gru_forcaster_2/gru/gru_cell/ReadVariableOp¢gru_forcaster_2/gru/whileO
gru_forcaster_2/gru/ShapeShapeinputs*
T0*
_output_shapes
:q
'gru_forcaster_2/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)gru_forcaster_2/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)gru_forcaster_2/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!gru_forcaster_2/gru/strided_sliceStridedSlice"gru_forcaster_2/gru/Shape:output:00gru_forcaster_2/gru/strided_slice/stack:output:02gru_forcaster_2/gru/strided_slice/stack_1:output:02gru_forcaster_2/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"gru_forcaster_2/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ¯
 gru_forcaster_2/gru/zeros/packedPack*gru_forcaster_2/gru/strided_slice:output:0+gru_forcaster_2/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
gru_forcaster_2/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¨
gru_forcaster_2/gru/zerosFill)gru_forcaster_2/gru/zeros/packed:output:0(gru_forcaster_2/gru/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
"gru_forcaster_2/gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
gru_forcaster_2/gru/transpose	Transposeinputs+gru_forcaster_2/gru/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
gru_forcaster_2/gru/Shape_1Shape!gru_forcaster_2/gru/transpose:y:0*
T0*
_output_shapes
:s
)gru_forcaster_2/gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+gru_forcaster_2/gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+gru_forcaster_2/gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#gru_forcaster_2/gru/strided_slice_1StridedSlice$gru_forcaster_2/gru/Shape_1:output:02gru_forcaster_2/gru/strided_slice_1/stack:output:04gru_forcaster_2/gru/strided_slice_1/stack_1:output:04gru_forcaster_2/gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/gru_forcaster_2/gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿð
!gru_forcaster_2/gru/TensorArrayV2TensorListReserve8gru_forcaster_2/gru/TensorArrayV2/element_shape:output:0,gru_forcaster_2/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Igru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
;gru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!gru_forcaster_2/gru/transpose:y:0Rgru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒs
)gru_forcaster_2/gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+gru_forcaster_2/gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+gru_forcaster_2/gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
#gru_forcaster_2/gru/strided_slice_2StridedSlice!gru_forcaster_2/gru/transpose:y:02gru_forcaster_2/gru/strided_slice_2/stack:output:04gru_forcaster_2/gru/strided_slice_2/stack_1:output:04gru_forcaster_2/gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask 
+gru_forcaster_2/gru/gru_cell/ReadVariableOpReadVariableOp4gru_forcaster_2_gru_gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0
$gru_forcaster_2/gru/gru_cell/unstackUnpack3gru_forcaster_2/gru/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num®
2gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOpReadVariableOp;gru_forcaster_2_gru_gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0É
#gru_forcaster_2/gru/gru_cell/MatMulMatMul,gru_forcaster_2/gru/strided_slice_2:output:0:gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`¿
$gru_forcaster_2/gru/gru_cell/BiasAddBiasAdd-gru_forcaster_2/gru/gru_cell/MatMul:product:0-gru_forcaster_2/gru/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`w
,gru_forcaster_2/gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿú
"gru_forcaster_2/gru/gru_cell/splitSplit5gru_forcaster_2/gru/gru_cell/split/split_dim:output:0-gru_forcaster_2/gru/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split²
4gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp=gru_forcaster_2_gru_gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0Ã
%gru_forcaster_2/gru/gru_cell/MatMul_1MatMul"gru_forcaster_2/gru/zeros:output:0<gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Ã
&gru_forcaster_2/gru/gru_cell/BiasAdd_1BiasAdd/gru_forcaster_2/gru/gru_cell/MatMul_1:product:0-gru_forcaster_2/gru/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`w
"gru_forcaster_2/gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿy
.gru_forcaster_2/gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿº
$gru_forcaster_2/gru/gru_cell/split_1SplitV/gru_forcaster_2/gru/gru_cell/BiasAdd_1:output:0+gru_forcaster_2/gru/gru_cell/Const:output:07gru_forcaster_2/gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split·
 gru_forcaster_2/gru/gru_cell/addAddV2+gru_forcaster_2/gru/gru_cell/split:output:0-gru_forcaster_2/gru/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$gru_forcaster_2/gru/gru_cell/SigmoidSigmoid$gru_forcaster_2/gru/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¹
"gru_forcaster_2/gru/gru_cell/add_1AddV2+gru_forcaster_2/gru/gru_cell/split:output:1-gru_forcaster_2/gru/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&gru_forcaster_2/gru/gru_cell/Sigmoid_1Sigmoid&gru_forcaster_2/gru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
 gru_forcaster_2/gru/gru_cell/mulMul*gru_forcaster_2/gru/gru_cell/Sigmoid_1:y:0-gru_forcaster_2/gru/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
"gru_forcaster_2/gru/gru_cell/add_2AddV2+gru_forcaster_2/gru/gru_cell/split:output:2$gru_forcaster_2/gru/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gru_forcaster_2/gru/gru_cell/ReluRelu&gru_forcaster_2/gru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ©
"gru_forcaster_2/gru/gru_cell/mul_1Mul(gru_forcaster_2/gru/gru_cell/Sigmoid:y:0"gru_forcaster_2/gru/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
"gru_forcaster_2/gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
 gru_forcaster_2/gru/gru_cell/subSub+gru_forcaster_2/gru/gru_cell/sub/x:output:0(gru_forcaster_2/gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ²
"gru_forcaster_2/gru/gru_cell/mul_2Mul$gru_forcaster_2/gru/gru_cell/sub:z:0/gru_forcaster_2/gru/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
"gru_forcaster_2/gru/gru_cell/add_3AddV2&gru_forcaster_2/gru/gru_cell/mul_1:z:0&gru_forcaster_2/gru/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
1gru_forcaster_2/gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ô
#gru_forcaster_2/gru/TensorArrayV2_1TensorListReserve:gru_forcaster_2/gru/TensorArrayV2_1/element_shape:output:0,gru_forcaster_2/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒZ
gru_forcaster_2/gru/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,gru_forcaster_2/gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿh
&gru_forcaster_2/gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
gru_forcaster_2/gru/whileWhile/gru_forcaster_2/gru/while/loop_counter:output:05gru_forcaster_2/gru/while/maximum_iterations:output:0!gru_forcaster_2/gru/time:output:0,gru_forcaster_2/gru/TensorArrayV2_1:handle:0"gru_forcaster_2/gru/zeros:output:0,gru_forcaster_2/gru/strided_slice_1:output:0Kgru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensor:output_handle:04gru_forcaster_2_gru_gru_cell_readvariableop_resource;gru_forcaster_2_gru_gru_cell_matmul_readvariableop_resource=gru_forcaster_2_gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *2
body*R(
&gru_forcaster_2_gru_while_body_2523272*2
cond*R(
&gru_forcaster_2_gru_while_cond_2523271*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
Dgru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    þ
6gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStackTensorListStack"gru_forcaster_2/gru/while:output:3Mgru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0|
)gru_forcaster_2/gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿu
+gru_forcaster_2/gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+gru_forcaster_2/gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ë
#gru_forcaster_2/gru/strided_slice_3StridedSlice?gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack:tensor:02gru_forcaster_2/gru/strided_slice_3/stack:output:04gru_forcaster_2/gru/strided_slice_3/stack_1:output:04gru_forcaster_2/gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_masky
$gru_forcaster_2/gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ò
gru_forcaster_2/gru/transpose_1	Transpose?gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack:tensor:0-gru_forcaster_2/gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
gru_forcaster_2/gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¤
-gru_forcaster_2/dense_2/MatMul/ReadVariableOpReadVariableOp6gru_forcaster_2_dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0¿
gru_forcaster_2/dense_2/MatMulMatMul,gru_forcaster_2/gru/strided_slice_3:output:05gru_forcaster_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.gru_forcaster_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp7gru_forcaster_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
gru_forcaster_2/dense_2/BiasAddBiasAdd(gru_forcaster_2/dense_2/MatMul:product:06gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(gru_forcaster_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÝ
NoOpNoOp/^gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp.^gru_forcaster_2/dense_2/MatMul/ReadVariableOp3^gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp5^gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp,^gru_forcaster_2/gru/gru_cell/ReadVariableOp^gru_forcaster_2/gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp.gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp2^
-gru_forcaster_2/dense_2/MatMul/ReadVariableOp-gru_forcaster_2/dense_2/MatMul/ReadVariableOp2h
2gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp2gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp2l
4gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp4gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp2Z
+gru_forcaster_2/gru/gru_cell/ReadVariableOp+gru_forcaster_2/gru/gru_cell/ReadVariableOp26
gru_forcaster_2/gru/whilegru_forcaster_2/gru/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç

á
D__inference_model_2_layer_call_and_return_conditional_losses_2523157
input_3)
gru_forcaster_2_2523145:`)
gru_forcaster_2_2523147:`)
gru_forcaster_2_2523149: `)
gru_forcaster_2_2523151: %
gru_forcaster_2_2523153:
identity¢'gru_forcaster_2/StatefulPartitionedCallä
'gru_forcaster_2/StatefulPartitionedCallStatefulPartitionedCallinput_3gru_forcaster_2_2523145gru_forcaster_2_2523147gru_forcaster_2_2523149gru_forcaster_2_2523151gru_forcaster_2_2523153*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2522759
IdentityIdentity0gru_forcaster_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
NoOpNoOp(^gru_forcaster_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2R
'gru_forcaster_2/StatefulPartitionedCall'gru_forcaster_2/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
õ
³
%__inference_gru_layer_call_fn_2523924

inputs
unknown:`
	unknown_0:`
	unknown_1: `
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2522734o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ö
E__inference_gru_cell_layer_call_and_return_conditional_losses_2524672

inputs
states_0)
readvariableop_resource:`0
matmul_readvariableop_resource:`2
 matmul_1_readvariableop_resource: `
identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:`*
dtype0_
unstackUnpackReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
numt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:`*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`h
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`l
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mul_1MulSigmoid:y:0states_0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ : : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0
ä

à
D__inference_model_2_layer_call_and_return_conditional_losses_2523114

inputs)
gru_forcaster_2_2523102:`)
gru_forcaster_2_2523104:`)
gru_forcaster_2_2523106: `)
gru_forcaster_2_2523108: %
gru_forcaster_2_2523110:
identity¢'gru_forcaster_2/StatefulPartitionedCallã
'gru_forcaster_2/StatefulPartitionedCallStatefulPartitionedCallinputsgru_forcaster_2_2523102gru_forcaster_2_2523104gru_forcaster_2_2523106gru_forcaster_2_2523108gru_forcaster_2_2523110*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2522990
IdentityIdentity0gru_forcaster_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
NoOpNoOp(^gru_forcaster_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2R
'gru_forcaster_2/StatefulPartitionedCall'gru_forcaster_2/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä

à
D__inference_model_2_layer_call_and_return_conditional_losses_2523069

inputs)
gru_forcaster_2_2523057:`)
gru_forcaster_2_2523059:`)
gru_forcaster_2_2523061: `)
gru_forcaster_2_2523063: %
gru_forcaster_2_2523065:
identity¢'gru_forcaster_2/StatefulPartitionedCallã
'gru_forcaster_2/StatefulPartitionedCallStatefulPartitionedCallinputsgru_forcaster_2_2523057gru_forcaster_2_2523059gru_forcaster_2_2523061gru_forcaster_2_2523063gru_forcaster_2_2523065*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2522759
IdentityIdentity0gru_forcaster_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
NoOpNoOp(^gru_forcaster_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2R
'gru_forcaster_2/StatefulPartitionedCall'gru_forcaster_2/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
í
)__inference_model_2_layer_call_fn_2523193

inputs
unknown:`
	unknown_0:`
	unknown_1: `
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_2523069o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÛK
ó
@__inference_gru_layer_call_and_return_conditional_losses_2524088
inputs_02
 gru_cell_readvariableop_resource:`9
'gru_cell_matmul_readvariableop_resource:`;
)gru_cell_matmul_1_readvariableop_resource: `
identity¢gru_cell/MatMul/ReadVariableOp¢ gru_cell/MatMul_1/ReadVariableOp¢gru_cell/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿe
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿê
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2523999*
condR
while_cond_2523998*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ùc
È
#__inference__traced_restore_2524849
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: H
6assignvariableop_5_gru_forcaster_2_gru_gru_cell_kernel:`R
@assignvariableop_6_gru_forcaster_2_gru_gru_cell_recurrent_kernel: `F
4assignvariableop_7_gru_forcaster_2_gru_gru_cell_bias:`C
1assignvariableop_8_gru_forcaster_2_dense_2_kernel: =
/assignvariableop_9_gru_forcaster_2_dense_2_bias:#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: P
>assignvariableop_14_adam_gru_forcaster_2_gru_gru_cell_kernel_m:`Z
Hassignvariableop_15_adam_gru_forcaster_2_gru_gru_cell_recurrent_kernel_m: `N
<assignvariableop_16_adam_gru_forcaster_2_gru_gru_cell_bias_m:`K
9assignvariableop_17_adam_gru_forcaster_2_dense_2_kernel_m: E
7assignvariableop_18_adam_gru_forcaster_2_dense_2_bias_m:P
>assignvariableop_19_adam_gru_forcaster_2_gru_gru_cell_kernel_v:`Z
Hassignvariableop_20_adam_gru_forcaster_2_gru_gru_cell_recurrent_kernel_v: `N
<assignvariableop_21_adam_gru_forcaster_2_gru_gru_cell_bias_v:`K
9assignvariableop_22_adam_gru_forcaster_2_dense_2_kernel_v: E
7assignvariableop_23_adam_gru_forcaster_2_dense_2_bias_v:
identity_25¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9º
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*à

valueÖ
BÓ
B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¢
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_5AssignVariableOp6assignvariableop_5_gru_forcaster_2_gru_gru_cell_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_6AssignVariableOp@assignvariableop_6_gru_forcaster_2_gru_gru_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_7AssignVariableOp4assignvariableop_7_gru_forcaster_2_gru_gru_cell_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_8AssignVariableOp1assignvariableop_8_gru_forcaster_2_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp/assignvariableop_9_gru_forcaster_2_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_14AssignVariableOp>assignvariableop_14_adam_gru_forcaster_2_gru_gru_cell_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_15AssignVariableOpHassignvariableop_15_adam_gru_forcaster_2_gru_gru_cell_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_16AssignVariableOp<assignvariableop_16_adam_gru_forcaster_2_gru_gru_cell_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_17AssignVariableOp9assignvariableop_17_adam_gru_forcaster_2_dense_2_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_18AssignVariableOp7assignvariableop_18_adam_gru_forcaster_2_dense_2_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_gru_forcaster_2_gru_gru_cell_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_20AssignVariableOpHassignvariableop_20_adam_gru_forcaster_2_gru_gru_cell_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_21AssignVariableOp<assignvariableop_21_adam_gru_forcaster_2_gru_gru_cell_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_22AssignVariableOp9assignvariableop_22_adam_gru_forcaster_2_dense_2_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_23AssignVariableOp7assignvariableop_23_adam_gru_forcaster_2_dense_2_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ß
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: Ì
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ü
Ô
E__inference_gru_cell_layer_call_and_return_conditional_losses_2522450

inputs

states)
readvariableop_resource:`0
matmul_readvariableop_resource:`2
 matmul_1_readvariableop_resource: `
identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:`*
dtype0_
unstackUnpackReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
numt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:`*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`h
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`l
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ S
mul_1MulSigmoid:y:0states*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ : : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
Ñ
í
)__inference_model_2_layer_call_fn_2523208

inputs
unknown:`
	unknown_0:`
	unknown_1: `
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_2523114o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê3
ö
@__inference_gru_layer_call_and_return_conditional_losses_2522384

inputs"
gru_cell_2522308:`"
gru_cell_2522310:`"
gru_cell_2522312: `
identity¢ gru_cell/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÁ
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_2522308gru_cell_2522310gru_cell_2522312*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2522307n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2522308gru_cell_2522310gru_cell_2522312*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2522320*
condR
while_cond_2522319*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
õ
1__inference_gru_forcaster_2_layer_call_fn_2523558

inputs
unknown:`
	unknown_0:`
	unknown_1: `
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2522759o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
û
gru_while_cond_2523636$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1=
9gru_while_gru_while_cond_2523636___redundant_placeholder0=
9gru_while_gru_while_cond_2523636___redundant_placeholder1=
9gru_while_gru_while_cond_2523636___redundant_placeholder2=
9gru_while_gru_while_cond_2523636___redundant_placeholder3
gru_while_identity
r
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: S
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: "1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ß
¯
while_cond_2524151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2524151___redundant_placeholder05
1while_while_cond_2524151___redundant_placeholder15
1while_while_cond_2524151___redundant_placeholder25
1while_while_cond_2524151___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
®
ê
%__inference_signature_wrapper_2523543
input_3
unknown:`
	unknown_0:`
	unknown_1: `
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_2522237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
Õ
Ã
.model_2_gru_forcaster_2_gru_while_cond_2522141T
Pmodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_while_loop_counterZ
Vmodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_while_maximum_iterations1
-model_2_gru_forcaster_2_gru_while_placeholder3
/model_2_gru_forcaster_2_gru_while_placeholder_13
/model_2_gru_forcaster_2_gru_while_placeholder_2V
Rmodel_2_gru_forcaster_2_gru_while_less_model_2_gru_forcaster_2_gru_strided_slice_1m
imodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_while_cond_2522141___redundant_placeholder0m
imodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_while_cond_2522141___redundant_placeholder1m
imodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_while_cond_2522141___redundant_placeholder2m
imodel_2_gru_forcaster_2_gru_while_model_2_gru_forcaster_2_gru_while_cond_2522141___redundant_placeholder3.
*model_2_gru_forcaster_2_gru_while_identity
Ò
&model_2/gru_forcaster_2/gru/while/LessLess-model_2_gru_forcaster_2_gru_while_placeholderRmodel_2_gru_forcaster_2_gru_while_less_model_2_gru_forcaster_2_gru_strided_slice_1*
T0*
_output_shapes
: 
*model_2/gru_forcaster_2/gru/while/IdentityIdentity*model_2/gru_forcaster_2/gru/while/Less:z:0*
T0
*
_output_shapes
: "a
*model_2_gru_forcaster_2_gru_while_identity3model_2/gru_forcaster_2/gru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Å

)__inference_dense_2_layer_call_fn_2524556

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_2522752o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ïn
ó
D__inference_model_2_layer_call_and_return_conditional_losses_2523526

inputsF
4gru_forcaster_2_gru_gru_cell_readvariableop_resource:`M
;gru_forcaster_2_gru_gru_cell_matmul_readvariableop_resource:`O
=gru_forcaster_2_gru_gru_cell_matmul_1_readvariableop_resource: `H
6gru_forcaster_2_dense_2_matmul_readvariableop_resource: E
7gru_forcaster_2_dense_2_biasadd_readvariableop_resource:
identity¢.gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp¢-gru_forcaster_2/dense_2/MatMul/ReadVariableOp¢2gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp¢4gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp¢+gru_forcaster_2/gru/gru_cell/ReadVariableOp¢gru_forcaster_2/gru/whileO
gru_forcaster_2/gru/ShapeShapeinputs*
T0*
_output_shapes
:q
'gru_forcaster_2/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)gru_forcaster_2/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)gru_forcaster_2/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!gru_forcaster_2/gru/strided_sliceStridedSlice"gru_forcaster_2/gru/Shape:output:00gru_forcaster_2/gru/strided_slice/stack:output:02gru_forcaster_2/gru/strided_slice/stack_1:output:02gru_forcaster_2/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"gru_forcaster_2/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ¯
 gru_forcaster_2/gru/zeros/packedPack*gru_forcaster_2/gru/strided_slice:output:0+gru_forcaster_2/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
gru_forcaster_2/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¨
gru_forcaster_2/gru/zerosFill)gru_forcaster_2/gru/zeros/packed:output:0(gru_forcaster_2/gru/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
"gru_forcaster_2/gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
gru_forcaster_2/gru/transpose	Transposeinputs+gru_forcaster_2/gru/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
gru_forcaster_2/gru/Shape_1Shape!gru_forcaster_2/gru/transpose:y:0*
T0*
_output_shapes
:s
)gru_forcaster_2/gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+gru_forcaster_2/gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+gru_forcaster_2/gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#gru_forcaster_2/gru/strided_slice_1StridedSlice$gru_forcaster_2/gru/Shape_1:output:02gru_forcaster_2/gru/strided_slice_1/stack:output:04gru_forcaster_2/gru/strided_slice_1/stack_1:output:04gru_forcaster_2/gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/gru_forcaster_2/gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿð
!gru_forcaster_2/gru/TensorArrayV2TensorListReserve8gru_forcaster_2/gru/TensorArrayV2/element_shape:output:0,gru_forcaster_2/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Igru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
;gru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!gru_forcaster_2/gru/transpose:y:0Rgru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒs
)gru_forcaster_2/gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+gru_forcaster_2/gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+gru_forcaster_2/gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
#gru_forcaster_2/gru/strided_slice_2StridedSlice!gru_forcaster_2/gru/transpose:y:02gru_forcaster_2/gru/strided_slice_2/stack:output:04gru_forcaster_2/gru/strided_slice_2/stack_1:output:04gru_forcaster_2/gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask 
+gru_forcaster_2/gru/gru_cell/ReadVariableOpReadVariableOp4gru_forcaster_2_gru_gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0
$gru_forcaster_2/gru/gru_cell/unstackUnpack3gru_forcaster_2/gru/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num®
2gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOpReadVariableOp;gru_forcaster_2_gru_gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0É
#gru_forcaster_2/gru/gru_cell/MatMulMatMul,gru_forcaster_2/gru/strided_slice_2:output:0:gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`¿
$gru_forcaster_2/gru/gru_cell/BiasAddBiasAdd-gru_forcaster_2/gru/gru_cell/MatMul:product:0-gru_forcaster_2/gru/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`w
,gru_forcaster_2/gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿú
"gru_forcaster_2/gru/gru_cell/splitSplit5gru_forcaster_2/gru/gru_cell/split/split_dim:output:0-gru_forcaster_2/gru/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split²
4gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp=gru_forcaster_2_gru_gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0Ã
%gru_forcaster_2/gru/gru_cell/MatMul_1MatMul"gru_forcaster_2/gru/zeros:output:0<gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Ã
&gru_forcaster_2/gru/gru_cell/BiasAdd_1BiasAdd/gru_forcaster_2/gru/gru_cell/MatMul_1:product:0-gru_forcaster_2/gru/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`w
"gru_forcaster_2/gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿy
.gru_forcaster_2/gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿº
$gru_forcaster_2/gru/gru_cell/split_1SplitV/gru_forcaster_2/gru/gru_cell/BiasAdd_1:output:0+gru_forcaster_2/gru/gru_cell/Const:output:07gru_forcaster_2/gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split·
 gru_forcaster_2/gru/gru_cell/addAddV2+gru_forcaster_2/gru/gru_cell/split:output:0-gru_forcaster_2/gru/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$gru_forcaster_2/gru/gru_cell/SigmoidSigmoid$gru_forcaster_2/gru/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¹
"gru_forcaster_2/gru/gru_cell/add_1AddV2+gru_forcaster_2/gru/gru_cell/split:output:1-gru_forcaster_2/gru/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&gru_forcaster_2/gru/gru_cell/Sigmoid_1Sigmoid&gru_forcaster_2/gru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
 gru_forcaster_2/gru/gru_cell/mulMul*gru_forcaster_2/gru/gru_cell/Sigmoid_1:y:0-gru_forcaster_2/gru/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
"gru_forcaster_2/gru/gru_cell/add_2AddV2+gru_forcaster_2/gru/gru_cell/split:output:2$gru_forcaster_2/gru/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gru_forcaster_2/gru/gru_cell/ReluRelu&gru_forcaster_2/gru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ©
"gru_forcaster_2/gru/gru_cell/mul_1Mul(gru_forcaster_2/gru/gru_cell/Sigmoid:y:0"gru_forcaster_2/gru/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
"gru_forcaster_2/gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
 gru_forcaster_2/gru/gru_cell/subSub+gru_forcaster_2/gru/gru_cell/sub/x:output:0(gru_forcaster_2/gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ²
"gru_forcaster_2/gru/gru_cell/mul_2Mul$gru_forcaster_2/gru/gru_cell/sub:z:0/gru_forcaster_2/gru/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
"gru_forcaster_2/gru/gru_cell/add_3AddV2&gru_forcaster_2/gru/gru_cell/mul_1:z:0&gru_forcaster_2/gru/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
1gru_forcaster_2/gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ô
#gru_forcaster_2/gru/TensorArrayV2_1TensorListReserve:gru_forcaster_2/gru/TensorArrayV2_1/element_shape:output:0,gru_forcaster_2/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒZ
gru_forcaster_2/gru/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,gru_forcaster_2/gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿh
&gru_forcaster_2/gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
gru_forcaster_2/gru/whileWhile/gru_forcaster_2/gru/while/loop_counter:output:05gru_forcaster_2/gru/while/maximum_iterations:output:0!gru_forcaster_2/gru/time:output:0,gru_forcaster_2/gru/TensorArrayV2_1:handle:0"gru_forcaster_2/gru/zeros:output:0,gru_forcaster_2/gru/strided_slice_1:output:0Kgru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensor:output_handle:04gru_forcaster_2_gru_gru_cell_readvariableop_resource;gru_forcaster_2_gru_gru_cell_matmul_readvariableop_resource=gru_forcaster_2_gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *2
body*R(
&gru_forcaster_2_gru_while_body_2523431*2
cond*R(
&gru_forcaster_2_gru_while_cond_2523430*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
Dgru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    þ
6gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStackTensorListStack"gru_forcaster_2/gru/while:output:3Mgru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0|
)gru_forcaster_2/gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿu
+gru_forcaster_2/gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+gru_forcaster_2/gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ë
#gru_forcaster_2/gru/strided_slice_3StridedSlice?gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack:tensor:02gru_forcaster_2/gru/strided_slice_3/stack:output:04gru_forcaster_2/gru/strided_slice_3/stack_1:output:04gru_forcaster_2/gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_masky
$gru_forcaster_2/gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ò
gru_forcaster_2/gru/transpose_1	Transpose?gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack:tensor:0-gru_forcaster_2/gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
gru_forcaster_2/gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¤
-gru_forcaster_2/dense_2/MatMul/ReadVariableOpReadVariableOp6gru_forcaster_2_dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0¿
gru_forcaster_2/dense_2/MatMulMatMul,gru_forcaster_2/gru/strided_slice_3:output:05gru_forcaster_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.gru_forcaster_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp7gru_forcaster_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
gru_forcaster_2/dense_2/BiasAddBiasAdd(gru_forcaster_2/dense_2/MatMul:product:06gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(gru_forcaster_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÝ
NoOpNoOp/^gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp.^gru_forcaster_2/dense_2/MatMul/ReadVariableOp3^gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp5^gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp,^gru_forcaster_2/gru/gru_cell/ReadVariableOp^gru_forcaster_2/gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp.gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp2^
-gru_forcaster_2/dense_2/MatMul/ReadVariableOp-gru_forcaster_2/dense_2/MatMul/ReadVariableOp2h
2gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp2gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp2l
4gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp4gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp2Z
+gru_forcaster_2/gru/gru_cell/ReadVariableOp+gru_forcaster_2/gru/gru_cell/ReadVariableOp26
gru_forcaster_2/gru/whilegru_forcaster_2/gru/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÛK
ó
@__inference_gru_layer_call_and_return_conditional_losses_2524241
inputs_02
 gru_cell_readvariableop_resource:`9
'gru_cell_matmul_readvariableop_resource:`;
)gru_cell_matmul_1_readvariableop_resource: `
identity¢gru_cell/MatMul/ReadVariableOp¢ gru_cell/MatMul_1/ReadVariableOp¢gru_cell/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿe
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿê
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2524152*
condR
while_cond_2524151*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
­
Ë
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523050
input_1
gru_2523037:`
gru_2523039:`
gru_2523041: `!
dense_2_2523044: 
dense_2_2523046:
identity¢dense_2/StatefulPartitionedCall¢gru/StatefulPartitionedCallò
gru/StatefulPartitionedCallStatefulPartitionedCallinput_1gru_2523037gru_2523039gru_2523041*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2522948
dense_2/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_2_2523044dense_2_2523046*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_2522752w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_2/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ß
¯
while_cond_2522501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2522501___redundant_placeholder05
1while_while_cond_2522501___redundant_placeholder15
1while_while_cond_2522501___redundant_placeholder25
1while_while_cond_2522501___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Ë
û
gru_while_cond_2523795$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1=
9gru_while_gru_while_cond_2523795___redundant_placeholder0=
9gru_while_gru_while_cond_2523795___redundant_placeholder1=
9gru_while_gru_while_cond_2523795___redundant_placeholder2=
9gru_while_gru_while_cond_2523795___redundant_placeholder3
gru_while_identity
r
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: S
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: "1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
õ
³
%__inference_gru_layer_call_fn_2523935

inputs
unknown:`
	unknown_0:`
	unknown_1: `
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2522948o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç

á
D__inference_model_2_layer_call_and_return_conditional_losses_2523172
input_3)
gru_forcaster_2_2523160:`)
gru_forcaster_2_2523162:`)
gru_forcaster_2_2523164: `)
gru_forcaster_2_2523166: %
gru_forcaster_2_2523168:
identity¢'gru_forcaster_2/StatefulPartitionedCallä
'gru_forcaster_2/StatefulPartitionedCallStatefulPartitionedCallinput_3gru_forcaster_2_2523160gru_forcaster_2_2523162gru_forcaster_2_2523164gru_forcaster_2_2523166gru_forcaster_2_2523168*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2522990
IdentityIdentity0gru_forcaster_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
NoOpNoOp(^gru_forcaster_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2R
'gru_forcaster_2/StatefulPartitionedCall'gru_forcaster_2/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
­
Ë
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523034
input_1
gru_2523021:`
gru_2523023:`
gru_2523025: `!
dense_2_2523028: 
dense_2_2523030:
identity¢dense_2/StatefulPartitionedCall¢gru/StatefulPartitionedCallò
gru/StatefulPartitionedCallStatefulPartitionedCallinput_1gru_2523021gru_2523023gru_2523025*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2522734
dense_2/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_2_2523028dense_2_2523030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_2522752w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_2/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¦K
ñ
@__inference_gru_layer_call_and_return_conditional_losses_2524547

inputs2
 gru_cell_readvariableop_resource:`9
'gru_cell_matmul_readvariableop_resource:`;
)gru_cell_matmul_1_readvariableop_resource: `
identity¢gru_cell/MatMul/ReadVariableOp¢ gru_cell/MatMul_1/ReadVariableOp¢gru_cell/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿe
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿê
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2524458*
condR
while_cond_2524457*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü
«
&gru_forcaster_2_gru_while_cond_2523271D
@gru_forcaster_2_gru_while_gru_forcaster_2_gru_while_loop_counterJ
Fgru_forcaster_2_gru_while_gru_forcaster_2_gru_while_maximum_iterations)
%gru_forcaster_2_gru_while_placeholder+
'gru_forcaster_2_gru_while_placeholder_1+
'gru_forcaster_2_gru_while_placeholder_2F
Bgru_forcaster_2_gru_while_less_gru_forcaster_2_gru_strided_slice_1]
Ygru_forcaster_2_gru_while_gru_forcaster_2_gru_while_cond_2523271___redundant_placeholder0]
Ygru_forcaster_2_gru_while_gru_forcaster_2_gru_while_cond_2523271___redundant_placeholder1]
Ygru_forcaster_2_gru_while_gru_forcaster_2_gru_while_cond_2523271___redundant_placeholder2]
Ygru_forcaster_2_gru_while_gru_forcaster_2_gru_while_cond_2523271___redundant_placeholder3&
"gru_forcaster_2_gru_while_identity
²
gru_forcaster_2/gru/while/LessLess%gru_forcaster_2_gru_while_placeholderBgru_forcaster_2_gru_while_less_gru_forcaster_2_gru_strided_slice_1*
T0*
_output_shapes
: s
"gru_forcaster_2/gru/while/IdentityIdentity"gru_forcaster_2/gru/while/Less:z:0*
T0
*
_output_shapes
: "Q
"gru_forcaster_2_gru_while_identity+gru_forcaster_2/gru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
;
è
while_body_2522645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:`A
/while_gru_cell_matmul_readvariableop_resource_0:`C
1while_gru_cell_matmul_1_readvariableop_resource_0: `
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:`?
-while_gru_cell_matmul_readvariableop_resource:`A
/while_gru_cell_matmul_1_readvariableop_resource: `¢$while/gru_cell/MatMul/ReadVariableOp¢&while/gru_cell/MatMul_1/ReadVariableOp¢while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÐ
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿk
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒu
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
íW
Ë
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523732

inputs6
$gru_gru_cell_readvariableop_resource:`=
+gru_gru_cell_matmul_readvariableop_resource:`?
-gru_gru_cell_matmul_1_readvariableop_resource: `8
&dense_2_matmul_readvariableop_resource: 5
'dense_2_biasadd_readvariableop_resource:
identity¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢"gru/gru_cell/MatMul/ReadVariableOp¢$gru/gru_cell/MatMul_1/ReadVariableOp¢gru/gru_cell/ReadVariableOp¢	gru/while?
	gru/ShapeShapeinputs*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
gru/transpose	Transposeinputsgru/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:c
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÀ
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ì
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒc
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0y
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
"gru/gru_cell/MatMul/ReadVariableOpReadVariableOp+gru_gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0
gru/gru_cell/MatMulMatMulgru/strided_slice_2:output:0*gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0gru/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`g
gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÊ
gru/gru_cell/splitSplit%gru/gru_cell/split/split_dim:output:0gru/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
$gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp-gru_gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0
gru/gru_cell/MatMul_1MatMulgru/zeros:output:0,gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0gru/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`g
gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿi
gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿú
gru/gru_cell/split_1SplitVgru/gru_cell/BiasAdd_1:output:0gru/gru_cell/Const:output:0'gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
gru/gru_cell/addAddV2gru/gru_cell/split:output:0gru/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/gru_cell/add_1AddV2gru/gru_cell/split:output:1gru/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/gru_cell/mulMulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/gru_cell/add_2AddV2gru/gru_cell/split:output:2gru/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
gru/gru_cell/ReluRelugru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
gru/gru_cell/mul_1Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ W
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/gru_cell/mul_2Mulgru/gru_cell/sub:z:0gru/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
gru/gru_cell/add_3AddV2gru/gru_cell/mul_1:z:0gru/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ä
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒJ
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : g
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿX
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ë
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource+gru_gru_cell_matmul_readvariableop_resource-gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *"
bodyR
gru_while_body_2523637*"
condR
gru_while_cond_2523636*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Î
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0l
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿe
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maski
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¢
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_2/MatMulMatMulgru/strided_slice_3:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp#^gru/gru_cell/MatMul/ReadVariableOp%^gru/gru_cell/MatMul_1/ReadVariableOp^gru/gru_cell/ReadVariableOp
^gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2H
"gru/gru_cell/MatMul/ReadVariableOp"gru/gru_cell/MatMul/ReadVariableOp2L
$gru/gru_cell/MatMul_1/ReadVariableOp$gru/gru_cell/MatMul_1/ReadVariableOp2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2
	gru/while	gru/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
¯
while_cond_2522319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2522319___redundant_placeholder05
1while_while_cond_2522319___redundant_placeholder15
1while_while_cond_2522319___redundant_placeholder25
1while_while_cond_2522319___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:

µ
%__inference_gru_layer_call_fn_2523902
inputs_0
unknown:`
	unknown_0:`
	unknown_1: `
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2522384o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ü
Ô
E__inference_gru_cell_layer_call_and_return_conditional_losses_2522307

inputs

states)
readvariableop_resource:`0
matmul_readvariableop_resource:`2
 matmul_1_readvariableop_resource: `
identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:`*
dtype0_
unstackUnpackReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
numt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:`*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`h
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`l
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ S
mul_1MulSigmoid:y:0states*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ : : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
ª
Ê
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2522990

inputs
gru_2522977:`
gru_2522979:`
gru_2522981: `!
dense_2_2522984: 
dense_2_2522986:
identity¢dense_2/StatefulPartitionedCall¢gru/StatefulPartitionedCallñ
gru/StatefulPartitionedCallStatefulPartitionedCallinputsgru_2522977gru_2522979gru_2522981*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2522948
dense_2/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_2_2522984dense_2_2522986*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_2522752w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_2/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç	
õ
D__inference_dense_2_layer_call_and_return_conditional_losses_2522752

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
°

Ö
*__inference_gru_cell_layer_call_fn_2524594

inputs
states_0
unknown:`
	unknown_0:`
	unknown_1: `
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2522450o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0
¦K
ñ
@__inference_gru_layer_call_and_return_conditional_losses_2522734

inputs2
 gru_cell_readvariableop_resource:`9
'gru_cell_matmul_readvariableop_resource:`;
)gru_cell_matmul_1_readvariableop_resource: `
identity¢gru_cell/MatMul/ReadVariableOp¢ gru_cell/MatMul_1/ReadVariableOp¢gru_cell/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿe
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿê
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2522645*
condR
while_cond_2522644*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
@
à
gru_while_body_2523637$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0>
,gru_while_gru_cell_readvariableop_resource_0:`E
3gru_while_gru_cell_matmul_readvariableop_resource_0:`G
5gru_while_gru_cell_matmul_1_readvariableop_resource_0: `
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor<
*gru_while_gru_cell_readvariableop_resource:`C
1gru_while_gru_cell_matmul_readvariableop_resource:`E
3gru_while_gru_cell_matmul_1_readvariableop_resource: `¢(gru/while/gru_cell/MatMul/ReadVariableOp¢*gru/while/gru_cell/MatMul_1/ReadVariableOp¢!gru/while/gru_cell/ReadVariableOp
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   º
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
(gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp3gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0½
gru/while/gru_cell/MatMulMatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:00gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`¡
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0#gru/while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`m
"gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÜ
gru/while/gru_cell/splitSplit+gru/while/gru_cell/split/split_dim:output:0#gru/while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split 
*gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp5gru_while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0¤
gru/while/gru_cell/MatMul_1MatMulgru_while_placeholder_22gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`¥
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0#gru/while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`m
gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿo
$gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
gru/while/gru_cell/split_1SplitV%gru/while/gru_cell/BiasAdd_1:output:0!gru/while/gru_cell/Const:output:0-gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
gru/while/gru_cell/addAddV2!gru/while/gru_cell/split:output:0#gru/while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/add_1AddV2!gru/while/gru_cell/split:output:1#gru/while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/mulMul gru/while/gru_cell/Sigmoid_1:y:0#gru/while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/add_2AddV2!gru/while/gru_cell/split:output:2gru/while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
gru/while/gru_cell/ReluRelugru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/mul_1Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ]
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/mul_2Mulgru/while/gru_cell/sub:z:0%gru/while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_1:z:0gru/while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ñ
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒQ
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: S
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: e
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: z
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: e
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: ¥
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: :éèÒ
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ì
gru/while/NoOpNoOp)^gru/while/gru_cell/MatMul/ReadVariableOp+^gru/while/gru_cell/MatMul_1/ReadVariableOp"^gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3gru_while_gru_cell_matmul_1_readvariableop_resource5gru_while_gru_cell_matmul_1_readvariableop_resource_0"h
1gru_while_gru_cell_matmul_readvariableop_resource3gru_while_gru_cell_matmul_readvariableop_resource_0"Z
*gru_while_gru_cell_readvariableop_resource,gru_while_gru_cell_readvariableop_resource_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"¸
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(gru/while/gru_cell/MatMul/ReadVariableOp(gru/while/gru_cell/MatMul/ReadVariableOp2X
*gru/while/gru_cell/MatMul_1/ReadVariableOp*gru/while/gru_cell/MatMul_1/ReadVariableOp2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
ä
ö
1__inference_gru_forcaster_2_layer_call_fn_2522772
input_1
unknown:`
	unknown_0:`
	unknown_1: `
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2522759o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
@
à
gru_while_body_2523796$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0>
,gru_while_gru_cell_readvariableop_resource_0:`E
3gru_while_gru_cell_matmul_readvariableop_resource_0:`G
5gru_while_gru_cell_matmul_1_readvariableop_resource_0: `
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor<
*gru_while_gru_cell_readvariableop_resource:`C
1gru_while_gru_cell_matmul_readvariableop_resource:`E
3gru_while_gru_cell_matmul_1_readvariableop_resource: `¢(gru/while/gru_cell/MatMul/ReadVariableOp¢*gru/while/gru_cell/MatMul_1/ReadVariableOp¢!gru/while/gru_cell/ReadVariableOp
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   º
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
(gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp3gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0½
gru/while/gru_cell/MatMulMatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:00gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`¡
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0#gru/while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`m
"gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÜ
gru/while/gru_cell/splitSplit+gru/while/gru_cell/split/split_dim:output:0#gru/while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split 
*gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp5gru_while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0¤
gru/while/gru_cell/MatMul_1MatMulgru_while_placeholder_22gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`¥
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0#gru/while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`m
gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿo
$gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
gru/while/gru_cell/split_1SplitV%gru/while/gru_cell/BiasAdd_1:output:0!gru/while/gru_cell/Const:output:0-gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
gru/while/gru_cell/addAddV2!gru/while/gru_cell/split:output:0#gru/while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/add_1AddV2!gru/while/gru_cell/split:output:1#gru/while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/mulMul gru/while/gru_cell/Sigmoid_1:y:0#gru/while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/add_2AddV2!gru/while/gru_cell/split:output:2gru/while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
gru/while/gru_cell/ReluRelugru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/mul_1Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ]
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/mul_2Mulgru/while/gru_cell/sub:z:0%gru/while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_1:z:0gru/while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ñ
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒQ
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: S
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: e
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: z
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: e
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: ¥
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: :éèÒ
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ì
gru/while/NoOpNoOp)^gru/while/gru_cell/MatMul/ReadVariableOp+^gru/while/gru_cell/MatMul_1/ReadVariableOp"^gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3gru_while_gru_cell_matmul_1_readvariableop_resource5gru_while_gru_cell_matmul_1_readvariableop_resource_0"h
1gru_while_gru_cell_matmul_readvariableop_resource3gru_while_gru_cell_matmul_readvariableop_resource_0"Z
*gru_while_gru_cell_readvariableop_resource,gru_while_gru_cell_readvariableop_resource_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"¸
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2T
(gru/while/gru_cell/MatMul/ReadVariableOp(gru/while/gru_cell/MatMul/ReadVariableOp2X
*gru/while/gru_cell/MatMul_1/ReadVariableOp*gru/while/gru_cell/MatMul_1/ReadVariableOp2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
;
è
while_body_2524152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:`A
/while_gru_cell_matmul_readvariableop_resource_0:`C
1while_gru_cell_matmul_1_readvariableop_resource_0: `
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:`?
-while_gru_cell_matmul_readvariableop_resource:`A
/while_gru_cell_matmul_1_readvariableop_resource: `¢$while/gru_cell/MatMul/ReadVariableOp¢&while/gru_cell/MatMul_1/ReadVariableOp¢while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÐ
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿk
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒu
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
íW
Ë
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523891

inputs6
$gru_gru_cell_readvariableop_resource:`=
+gru_gru_cell_matmul_readvariableop_resource:`?
-gru_gru_cell_matmul_1_readvariableop_resource: `8
&dense_2_matmul_readvariableop_resource: 5
'dense_2_biasadd_readvariableop_resource:
identity¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢"gru/gru_cell/MatMul/ReadVariableOp¢$gru/gru_cell/MatMul_1/ReadVariableOp¢gru/gru_cell/ReadVariableOp¢	gru/while?
	gru/ShapeShapeinputs*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
gru/transpose	Transposeinputsgru/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:c
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÀ
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ì
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒc
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0y
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
"gru/gru_cell/MatMul/ReadVariableOpReadVariableOp+gru_gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0
gru/gru_cell/MatMulMatMulgru/strided_slice_2:output:0*gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0gru/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`g
gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÊ
gru/gru_cell/splitSplit%gru/gru_cell/split/split_dim:output:0gru/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
$gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp-gru_gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0
gru/gru_cell/MatMul_1MatMulgru/zeros:output:0,gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0gru/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`g
gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿi
gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿú
gru/gru_cell/split_1SplitVgru/gru_cell/BiasAdd_1:output:0gru/gru_cell/Const:output:0'gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
gru/gru_cell/addAddV2gru/gru_cell/split:output:0gru/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/gru_cell/add_1AddV2gru/gru_cell/split:output:1gru/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/gru_cell/mulMulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/gru_cell/add_2AddV2gru/gru_cell/split:output:2gru/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
gru/gru_cell/ReluRelugru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
gru/gru_cell/mul_1Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ W
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru/gru_cell/mul_2Mulgru/gru_cell/sub:z:0gru/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
gru/gru_cell/add_3AddV2gru/gru_cell/mul_1:z:0gru/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ä
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒJ
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : g
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿX
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ë
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource+gru_gru_cell_matmul_readvariableop_resource-gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *"
bodyR
gru_while_body_2523796*"
condR
gru_while_cond_2523795*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Î
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0l
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿe
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maski
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¢
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_2/MatMulMatMulgru/strided_slice_3:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp#^gru/gru_cell/MatMul/ReadVariableOp%^gru/gru_cell/MatMul_1/ReadVariableOp^gru/gru_cell/ReadVariableOp
^gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2H
"gru/gru_cell/MatMul/ReadVariableOp"gru/gru_cell/MatMul/ReadVariableOp2L
$gru/gru_cell/MatMul_1/ReadVariableOp$gru/gru_cell/MatMul_1/ReadVariableOp2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2
	gru/while	gru/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
¯
while_cond_2524304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2524304___redundant_placeholder05
1while_while_cond_2524304___redundant_placeholder15
1while_while_cond_2524304___redundant_placeholder25
1while_while_cond_2524304___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
è9

 __inference__traced_save_2524767
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopB
>savev2_gru_forcaster_2_gru_gru_cell_kernel_read_readvariableopL
Hsavev2_gru_forcaster_2_gru_gru_cell_recurrent_kernel_read_readvariableop@
<savev2_gru_forcaster_2_gru_gru_cell_bias_read_readvariableop=
9savev2_gru_forcaster_2_dense_2_kernel_read_readvariableop;
7savev2_gru_forcaster_2_dense_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopI
Esavev2_adam_gru_forcaster_2_gru_gru_cell_kernel_m_read_readvariableopS
Osavev2_adam_gru_forcaster_2_gru_gru_cell_recurrent_kernel_m_read_readvariableopG
Csavev2_adam_gru_forcaster_2_gru_gru_cell_bias_m_read_readvariableopD
@savev2_adam_gru_forcaster_2_dense_2_kernel_m_read_readvariableopB
>savev2_adam_gru_forcaster_2_dense_2_bias_m_read_readvariableopI
Esavev2_adam_gru_forcaster_2_gru_gru_cell_kernel_v_read_readvariableopS
Osavev2_adam_gru_forcaster_2_gru_gru_cell_recurrent_kernel_v_read_readvariableopG
Csavev2_adam_gru_forcaster_2_gru_gru_cell_bias_v_read_readvariableopD
@savev2_adam_gru_forcaster_2_dense_2_kernel_v_read_readvariableopB
>savev2_adam_gru_forcaster_2_dense_2_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ·
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*à

valueÖ
BÓ
B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop>savev2_gru_forcaster_2_gru_gru_cell_kernel_read_readvariableopHsavev2_gru_forcaster_2_gru_gru_cell_recurrent_kernel_read_readvariableop<savev2_gru_forcaster_2_gru_gru_cell_bias_read_readvariableop9savev2_gru_forcaster_2_dense_2_kernel_read_readvariableop7savev2_gru_forcaster_2_dense_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopEsavev2_adam_gru_forcaster_2_gru_gru_cell_kernel_m_read_readvariableopOsavev2_adam_gru_forcaster_2_gru_gru_cell_recurrent_kernel_m_read_readvariableopCsavev2_adam_gru_forcaster_2_gru_gru_cell_bias_m_read_readvariableop@savev2_adam_gru_forcaster_2_dense_2_kernel_m_read_readvariableop>savev2_adam_gru_forcaster_2_dense_2_bias_m_read_readvariableopEsavev2_adam_gru_forcaster_2_gru_gru_cell_kernel_v_read_readvariableopOsavev2_adam_gru_forcaster_2_gru_gru_cell_recurrent_kernel_v_read_readvariableopCsavev2_adam_gru_forcaster_2_gru_gru_cell_bias_v_read_readvariableop@savev2_adam_gru_forcaster_2_dense_2_kernel_v_read_readvariableop>savev2_adam_gru_forcaster_2_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*µ
_input_shapes£
 : : : : : : :`: `:`: :: : : : :`: `:`: ::`: `:`: :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:`:$ 

_output_shapes

: `:$ 

_output_shapes

:`:$	 

_output_shapes

: : 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:`:$ 

_output_shapes

: `:$ 

_output_shapes

:`:$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:`:$ 

_output_shapes

: `:$ 

_output_shapes

:`:$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
ª
Ê
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2522759

inputs
gru_2522735:`
gru_2522737:`
gru_2522739: `!
dense_2_2522753: 
dense_2_2522755:
identity¢dense_2/StatefulPartitionedCall¢gru/StatefulPartitionedCallñ
gru/StatefulPartitionedCallStatefulPartitionedCallinputsgru_2522735gru_2522737gru_2522739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2522734
dense_2/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_2_2522753dense_2_2522755*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_2522752w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_2/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê3
ö
@__inference_gru_layer_call_and_return_conditional_losses_2522566

inputs"
gru_cell_2522490:`"
gru_cell_2522492:`"
gru_cell_2522494: `
identity¢ gru_cell/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÁ
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_2522490gru_cell_2522492gru_cell_2522494*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2522450n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2522490gru_cell_2522492gru_cell_2522494*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2522502*
condR
while_cond_2522501*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
¯
while_cond_2522644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2522644___redundant_placeholder05
1while_while_cond_2522644___redundant_placeholder15
1while_while_cond_2522644___redundant_placeholder25
1while_while_cond_2522644___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
z
ª
"__inference__wrapped_model_2522237
input_3N
<model_2_gru_forcaster_2_gru_gru_cell_readvariableop_resource:`U
Cmodel_2_gru_forcaster_2_gru_gru_cell_matmul_readvariableop_resource:`W
Emodel_2_gru_forcaster_2_gru_gru_cell_matmul_1_readvariableop_resource: `P
>model_2_gru_forcaster_2_dense_2_matmul_readvariableop_resource: M
?model_2_gru_forcaster_2_dense_2_biasadd_readvariableop_resource:
identity¢6model_2/gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp¢5model_2/gru_forcaster_2/dense_2/MatMul/ReadVariableOp¢:model_2/gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp¢<model_2/gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp¢3model_2/gru_forcaster_2/gru/gru_cell/ReadVariableOp¢!model_2/gru_forcaster_2/gru/whileX
!model_2/gru_forcaster_2/gru/ShapeShapeinput_3*
T0*
_output_shapes
:y
/model_2/gru_forcaster_2/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/gru_forcaster_2/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/gru_forcaster_2/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)model_2/gru_forcaster_2/gru/strided_sliceStridedSlice*model_2/gru_forcaster_2/gru/Shape:output:08model_2/gru_forcaster_2/gru/strided_slice/stack:output:0:model_2/gru_forcaster_2/gru/strided_slice/stack_1:output:0:model_2/gru_forcaster_2/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*model_2/gru_forcaster_2/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ç
(model_2/gru_forcaster_2/gru/zeros/packedPack2model_2/gru_forcaster_2/gru/strided_slice:output:03model_2/gru_forcaster_2/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'model_2/gru_forcaster_2/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    À
!model_2/gru_forcaster_2/gru/zerosFill1model_2/gru_forcaster_2/gru/zeros/packed:output:00model_2/gru_forcaster_2/gru/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*model_2/gru_forcaster_2/gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¦
%model_2/gru_forcaster_2/gru/transpose	Transposeinput_33model_2/gru_forcaster_2/gru/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
#model_2/gru_forcaster_2/gru/Shape_1Shape)model_2/gru_forcaster_2/gru/transpose:y:0*
T0*
_output_shapes
:{
1model_2/gru_forcaster_2/gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/gru_forcaster_2/gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/gru_forcaster_2/gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+model_2/gru_forcaster_2/gru/strided_slice_1StridedSlice,model_2/gru_forcaster_2/gru/Shape_1:output:0:model_2/gru_forcaster_2/gru/strided_slice_1/stack:output:0<model_2/gru_forcaster_2/gru/strided_slice_1/stack_1:output:0<model_2/gru_forcaster_2/gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
7model_2/gru_forcaster_2/gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
)model_2/gru_forcaster_2/gru/TensorArrayV2TensorListReserve@model_2/gru_forcaster_2/gru/TensorArrayV2/element_shape:output:04model_2/gru_forcaster_2/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¢
Qmodel_2/gru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ´
Cmodel_2/gru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)model_2/gru_forcaster_2/gru/transpose:y:0Zmodel_2/gru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ{
1model_2/gru_forcaster_2/gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/gru_forcaster_2/gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/gru_forcaster_2/gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
+model_2/gru_forcaster_2/gru/strided_slice_2StridedSlice)model_2/gru_forcaster_2/gru/transpose:y:0:model_2/gru_forcaster_2/gru/strided_slice_2/stack:output:0<model_2/gru_forcaster_2/gru/strided_slice_2/stack_1:output:0<model_2/gru_forcaster_2/gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask°
3model_2/gru_forcaster_2/gru/gru_cell/ReadVariableOpReadVariableOp<model_2_gru_forcaster_2_gru_gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0©
,model_2/gru_forcaster_2/gru/gru_cell/unstackUnpack;model_2/gru_forcaster_2/gru/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num¾
:model_2/gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOpReadVariableOpCmodel_2_gru_forcaster_2_gru_gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0á
+model_2/gru_forcaster_2/gru/gru_cell/MatMulMatMul4model_2/gru_forcaster_2/gru/strided_slice_2:output:0Bmodel_2/gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`×
,model_2/gru_forcaster_2/gru/gru_cell/BiasAddBiasAdd5model_2/gru_forcaster_2/gru/gru_cell/MatMul:product:05model_2/gru_forcaster_2/gru/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
4model_2/gru_forcaster_2/gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
*model_2/gru_forcaster_2/gru/gru_cell/splitSplit=model_2/gru_forcaster_2/gru/gru_cell/split/split_dim:output:05model_2/gru_forcaster_2/gru/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitÂ
<model_2/gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOpEmodel_2_gru_forcaster_2_gru_gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0Û
-model_2/gru_forcaster_2/gru/gru_cell/MatMul_1MatMul*model_2/gru_forcaster_2/gru/zeros:output:0Dmodel_2/gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`Û
.model_2/gru_forcaster_2/gru/gru_cell/BiasAdd_1BiasAdd7model_2/gru_forcaster_2/gru/gru_cell/MatMul_1:product:05model_2/gru_forcaster_2/gru/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
*model_2/gru_forcaster_2/gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿ
6model_2/gru_forcaster_2/gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÚ
,model_2/gru_forcaster_2/gru/gru_cell/split_1SplitV7model_2/gru_forcaster_2/gru/gru_cell/BiasAdd_1:output:03model_2/gru_forcaster_2/gru/gru_cell/Const:output:0?model_2/gru_forcaster_2/gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitÏ
(model_2/gru_forcaster_2/gru/gru_cell/addAddV23model_2/gru_forcaster_2/gru/gru_cell/split:output:05model_2/gru_forcaster_2/gru/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
,model_2/gru_forcaster_2/gru/gru_cell/SigmoidSigmoid,model_2/gru_forcaster_2/gru/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ñ
*model_2/gru_forcaster_2/gru/gru_cell/add_1AddV23model_2/gru_forcaster_2/gru/gru_cell/split:output:15model_2/gru_forcaster_2/gru/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
.model_2/gru_forcaster_2/gru/gru_cell/Sigmoid_1Sigmoid.model_2/gru_forcaster_2/gru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ì
(model_2/gru_forcaster_2/gru/gru_cell/mulMul2model_2/gru_forcaster_2/gru/gru_cell/Sigmoid_1:y:05model_2/gru_forcaster_2/gru/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ È
*model_2/gru_forcaster_2/gru/gru_cell/add_2AddV23model_2/gru_forcaster_2/gru/gru_cell/split:output:2,model_2/gru_forcaster_2/gru/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)model_2/gru_forcaster_2/gru/gru_cell/ReluRelu.model_2/gru_forcaster_2/gru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
*model_2/gru_forcaster_2/gru/gru_cell/mul_1Mul0model_2/gru_forcaster_2/gru/gru_cell/Sigmoid:y:0*model_2/gru_forcaster_2/gru/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
*model_2/gru_forcaster_2/gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
(model_2/gru_forcaster_2/gru/gru_cell/subSub3model_2/gru_forcaster_2/gru/gru_cell/sub/x:output:00model_2/gru_forcaster_2/gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ê
*model_2/gru_forcaster_2/gru/gru_cell/mul_2Mul,model_2/gru_forcaster_2/gru/gru_cell/sub:z:07model_2/gru_forcaster_2/gru/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Å
*model_2/gru_forcaster_2/gru/gru_cell/add_3AddV2.model_2/gru_forcaster_2/gru/gru_cell/mul_1:z:0.model_2/gru_forcaster_2/gru/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
9model_2/gru_forcaster_2/gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
+model_2/gru_forcaster_2/gru/TensorArrayV2_1TensorListReserveBmodel_2/gru_forcaster_2/gru/TensorArrayV2_1/element_shape:output:04model_2/gru_forcaster_2/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒb
 model_2/gru_forcaster_2/gru/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4model_2/gru_forcaster_2/gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿp
.model_2/gru_forcaster_2/gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : £
!model_2/gru_forcaster_2/gru/whileWhile7model_2/gru_forcaster_2/gru/while/loop_counter:output:0=model_2/gru_forcaster_2/gru/while/maximum_iterations:output:0)model_2/gru_forcaster_2/gru/time:output:04model_2/gru_forcaster_2/gru/TensorArrayV2_1:handle:0*model_2/gru_forcaster_2/gru/zeros:output:04model_2/gru_forcaster_2/gru/strided_slice_1:output:0Smodel_2/gru_forcaster_2/gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0<model_2_gru_forcaster_2_gru_gru_cell_readvariableop_resourceCmodel_2_gru_forcaster_2_gru_gru_cell_matmul_readvariableop_resourceEmodel_2_gru_forcaster_2_gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *:
body2R0
.model_2_gru_forcaster_2_gru_while_body_2522142*:
cond2R0
.model_2_gru_forcaster_2_gru_while_cond_2522141*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
Lmodel_2/gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
>model_2/gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStackTensorListStack*model_2/gru_forcaster_2/gru/while:output:3Umodel_2/gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
1model_2/gru_forcaster_2/gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ}
3model_2/gru_forcaster_2/gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3model_2/gru_forcaster_2/gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
+model_2/gru_forcaster_2/gru/strided_slice_3StridedSliceGmodel_2/gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack:tensor:0:model_2/gru_forcaster_2/gru/strided_slice_3/stack:output:0<model_2/gru_forcaster_2/gru/strided_slice_3/stack_1:output:0<model_2/gru_forcaster_2/gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
,model_2/gru_forcaster_2/gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ê
'model_2/gru_forcaster_2/gru/transpose_1	TransposeGmodel_2/gru_forcaster_2/gru/TensorArrayV2Stack/TensorListStack:tensor:05model_2/gru_forcaster_2/gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
#model_2/gru_forcaster_2/gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ´
5model_2/gru_forcaster_2/dense_2/MatMul/ReadVariableOpReadVariableOp>model_2_gru_forcaster_2_dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0×
&model_2/gru_forcaster_2/dense_2/MatMulMatMul4model_2/gru_forcaster_2/gru/strided_slice_3:output:0=model_2/gru_forcaster_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
6model_2/gru_forcaster_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp?model_2_gru_forcaster_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ö
'model_2/gru_forcaster_2/dense_2/BiasAddBiasAdd0model_2/gru_forcaster_2/dense_2/MatMul:product:0>model_2/gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity0model_2/gru_forcaster_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp7^model_2/gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp6^model_2/gru_forcaster_2/dense_2/MatMul/ReadVariableOp;^model_2/gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp=^model_2/gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp4^model_2/gru_forcaster_2/gru/gru_cell/ReadVariableOp"^model_2/gru_forcaster_2/gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2p
6model_2/gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp6model_2/gru_forcaster_2/dense_2/BiasAdd/ReadVariableOp2n
5model_2/gru_forcaster_2/dense_2/MatMul/ReadVariableOp5model_2/gru_forcaster_2/dense_2/MatMul/ReadVariableOp2x
:model_2/gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp:model_2/gru_forcaster_2/gru/gru_cell/MatMul/ReadVariableOp2|
<model_2/gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp<model_2/gru_forcaster_2/gru/gru_cell/MatMul_1/ReadVariableOp2j
3model_2/gru_forcaster_2/gru/gru_cell/ReadVariableOp3model_2/gru_forcaster_2/gru/gru_cell/ReadVariableOp2F
!model_2/gru_forcaster_2/gru/while!model_2/gru_forcaster_2/gru/while:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
ß
¯
while_cond_2524457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2524457___redundant_placeholder05
1while_while_cond_2524457___redundant_placeholder15
1while_while_cond_2524457___redundant_placeholder25
1while_while_cond_2524457___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ü
«
&gru_forcaster_2_gru_while_cond_2523430D
@gru_forcaster_2_gru_while_gru_forcaster_2_gru_while_loop_counterJ
Fgru_forcaster_2_gru_while_gru_forcaster_2_gru_while_maximum_iterations)
%gru_forcaster_2_gru_while_placeholder+
'gru_forcaster_2_gru_while_placeholder_1+
'gru_forcaster_2_gru_while_placeholder_2F
Bgru_forcaster_2_gru_while_less_gru_forcaster_2_gru_strided_slice_1]
Ygru_forcaster_2_gru_while_gru_forcaster_2_gru_while_cond_2523430___redundant_placeholder0]
Ygru_forcaster_2_gru_while_gru_forcaster_2_gru_while_cond_2523430___redundant_placeholder1]
Ygru_forcaster_2_gru_while_gru_forcaster_2_gru_while_cond_2523430___redundant_placeholder2]
Ygru_forcaster_2_gru_while_gru_forcaster_2_gru_while_cond_2523430___redundant_placeholder3&
"gru_forcaster_2_gru_while_identity
²
gru_forcaster_2/gru/while/LessLess%gru_forcaster_2_gru_while_placeholderBgru_forcaster_2_gru_while_less_gru_forcaster_2_gru_strided_slice_1*
T0*
_output_shapes
: s
"gru_forcaster_2/gru/while/IdentityIdentity"gru_forcaster_2/gru/while/Less:z:0*
T0
*
_output_shapes
: "Q
"gru_forcaster_2_gru_while_identity+gru_forcaster_2/gru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
;
è
while_body_2522859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:`A
/while_gru_cell_matmul_readvariableop_resource_0:`C
1while_gru_cell_matmul_1_readvariableop_resource_0: `
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:`?
-while_gru_cell_matmul_readvariableop_resource:`A
/while_gru_cell_matmul_1_readvariableop_resource: `¢$while/gru_cell/MatMul/ReadVariableOp¢&while/gru_cell/MatMul_1/ReadVariableOp¢while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÐ
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿk
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒu
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ô
î
)__inference_model_2_layer_call_fn_2523082
input_3
unknown:`
	unknown_0:`
	unknown_1: `
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_2523069o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
Ö
¡
while_body_2522502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_gru_cell_2522524_0:`*
while_gru_cell_2522526_0:`*
while_gru_cell_2522528_0: `
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_gru_cell_2522524:`(
while_gru_cell_2522526:`(
while_gru_cell_2522528: `¢&while/gru_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0ü
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2522524_0while_gru_cell_2522526_0while_gru_cell_2522528_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2522450Ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "2
while_gru_cell_2522524while_gru_cell_2522524_0"2
while_gru_cell_2522526while_gru_cell_2522526_0"2
while_gru_cell_2522528while_gru_cell_2522528_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
¦K
ñ
@__inference_gru_layer_call_and_return_conditional_losses_2524394

inputs2
 gru_cell_readvariableop_resource:`9
'gru_cell_matmul_readvariableop_resource:`;
)gru_cell_matmul_1_readvariableop_resource: `
identity¢gru_cell/MatMul/ReadVariableOp¢ gru_cell/MatMul_1/ReadVariableOp¢gru_cell/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:`*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:`*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

: `*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿe
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿê
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2524305*
condR
while_cond_2524304*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
;
è
while_body_2523999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:`A
/while_gru_cell_matmul_readvariableop_resource_0:`C
1while_gru_cell_matmul_1_readvariableop_resource_0: `
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:`?
-while_gru_cell_matmul_readvariableop_resource:`A
/while_gru_cell_matmul_1_readvariableop_resource: `¢$while/gru_cell/MatMul/ReadVariableOp¢&while/gru_cell/MatMul_1/ReadVariableOp¢while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÐ
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿk
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒu
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
ß
¯
while_cond_2523998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2523998___redundant_placeholder05
1while_while_cond_2523998___redundant_placeholder15
1while_while_cond_2523998___redundant_placeholder25
1while_while_cond_2523998___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
;
è
while_body_2524458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:`A
/while_gru_cell_matmul_readvariableop_resource_0:`C
1while_gru_cell_matmul_1_readvariableop_resource_0: `
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:`?
-while_gru_cell_matmul_readvariableop_resource:`A
/while_gru_cell_matmul_1_readvariableop_resource: `¢$while/gru_cell/MatMul/ReadVariableOp¢&while/gru_cell/MatMul_1/ReadVariableOp¢while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:`*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:`:`*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:`*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÐ
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: `*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"        ÿÿÿÿk
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒu
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ç	
õ
D__inference_dense_2_layer_call_and_return_conditional_losses_2524566

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ö
¡
while_body_2522320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_gru_cell_2522342_0:`*
while_gru_cell_2522344_0:`*
while_gru_cell_2522346_0: `
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_gru_cell_2522342:`(
while_gru_cell_2522344:`(
while_gru_cell_2522346: `¢&while/gru_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0ü
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2522342_0while_gru_cell_2522344_0while_gru_cell_2522346_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2522307Ø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "2
while_gru_cell_2522342while_gru_cell_2522342_0"2
while_gru_cell_2522344while_gru_cell_2522344_0"2
while_gru_cell_2522346while_gru_cell_2522346_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: "ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¶
serving_default¢
?
input_34
serving_default_input_3:0ÿÿÿÿÿÿÿÿÿC
gru_forcaster_20
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:|

layer-0
layer_with_weights-0
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ì
recurrent_layer
output_layer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_model
­
iter

beta_1

beta_2
	decay
learning_ratemZm[m\m]m^v_v`vavbvc"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
ò2ï
)__inference_model_2_layer_call_fn_2523082
)__inference_model_2_layer_call_fn_2523193
)__inference_model_2_layer_call_fn_2523208
)__inference_model_2_layer_call_fn_2523142À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
D__inference_model_2_layer_call_and_return_conditional_losses_2523367
D__inference_model_2_layer_call_and_return_conditional_losses_2523526
D__inference_model_2_layer_call_and_return_conditional_losses_2523157
D__inference_model_2_layer_call_and_return_conditional_losses_2523172À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÍBÊ
"__inference__wrapped_model_2522237input_3"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
#serving_default"
signature_map
Ú
$cell
%
state_spec
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*_random_generator
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
­
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
1__inference_gru_forcaster_2_layer_call_fn_2522772
1__inference_gru_forcaster_2_layer_call_fn_2523558
1__inference_gru_forcaster_2_layer_call_fn_2523573
1__inference_gru_forcaster_2_layer_call_fn_2523018³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523732
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523891
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523034
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523050³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5:3`2#gru_forcaster_2/gru/gru_cell/kernel
?:= `2-gru_forcaster_2/gru/gru_cell/recurrent_kernel
3:1`2!gru_forcaster_2/gru/gru_cell/bias
0:. 2gru_forcaster_2/dense_2/kernel
*:(2gru_forcaster_2/dense_2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÌBÉ
%__inference_signature_wrapper_2523543input_3"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
è

kernel
recurrent_kernel
bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>_random_generator
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
&	variables
'trainable_variables
(regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
÷2ô
%__inference_gru_layer_call_fn_2523902
%__inference_gru_layer_call_fn_2523913
%__inference_gru_layer_call_fn_2523924
%__inference_gru_layer_call_fn_2523935Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ã2à
@__inference_gru_layer_call_and_return_conditional_losses_2524088
@__inference_gru_layer_call_and_return_conditional_losses_2524241
@__inference_gru_layer_call_and_return_conditional_losses_2524394
@__inference_gru_layer_call_and_return_conditional_losses_2524547Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_2_layer_call_fn_2524556¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_2_layer_call_and_return_conditional_losses_2524566¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Ltotal
	Mcount
N	variables
O	keras_api"
_tf_keras_metric
^
	Ptotal
	Qcount
R
_fn_kwargs
S	variables
T	keras_api"
_tf_keras_metric
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
:	variables
;trainable_variables
<regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_gru_cell_layer_call_fn_2524580
*__inference_gru_cell_layer_call_fn_2524594¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
E__inference_gru_cell_layer_call_and_return_conditional_losses_2524633
E__inference_gru_cell_layer_call_and_return_conditional_losses_2524672¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
$0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
L0
M1"
trackable_list_wrapper
-
N	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
P0
Q1"
trackable_list_wrapper
-
S	variables"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
::8`2*Adam/gru_forcaster_2/gru/gru_cell/kernel/m
D:B `24Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/m
8:6`2(Adam/gru_forcaster_2/gru/gru_cell/bias/m
5:3 2%Adam/gru_forcaster_2/dense_2/kernel/m
/:-2#Adam/gru_forcaster_2/dense_2/bias/m
::8`2*Adam/gru_forcaster_2/gru/gru_cell/kernel/v
D:B `24Adam/gru_forcaster_2/gru/gru_cell/recurrent_kernel/v
8:6`2(Adam/gru_forcaster_2/gru/gru_cell/bias/v
5:3 2%Adam/gru_forcaster_2/dense_2/kernel/v
/:-2#Adam/gru_forcaster_2/dense_2/bias/v§
"__inference__wrapped_model_25222374¢1
*¢'
%"
input_3ÿÿÿÿÿÿÿÿÿ
ª "Aª>
<
gru_forcaster_2)&
gru_forcaster_2ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_2_layer_call_and_return_conditional_losses_2524566\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_2_layer_call_fn_2524556O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ
E__inference_gru_cell_layer_call_and_return_conditional_losses_2524633·\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ 
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ 
$!

0/1/0ÿÿÿÿÿÿÿÿÿ 
 
E__inference_gru_cell_layer_call_and_return_conditional_losses_2524672·\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ 
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ 
$!

0/1/0ÿÿÿÿÿÿÿÿÿ 
 Ø
*__inference_gru_cell_layer_call_fn_2524580©\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ 
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ 
"

1/0ÿÿÿÿÿÿÿÿÿ Ø
*__inference_gru_cell_layer_call_fn_2524594©\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ 
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ 
"

1/0ÿÿÿÿÿÿÿÿÿ ¸
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523034h8¢5
.¢+
%"
input_1ÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523050h8¢5
.¢+
%"
input_1ÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523732g7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
L__inference_gru_forcaster_2_layer_call_and_return_conditional_losses_2523891g7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
1__inference_gru_forcaster_2_layer_call_fn_2522772[8¢5
.¢+
%"
input_1ÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
1__inference_gru_forcaster_2_layer_call_fn_2523018[8¢5
.¢+
%"
input_1ÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
1__inference_gru_forcaster_2_layer_call_fn_2523558Z7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
1__inference_gru_forcaster_2_layer_call_fn_2523573Z7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿÁ
@__inference_gru_layer_call_and_return_conditional_losses_2524088}O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 Á
@__inference_gru_layer_call_and_return_conditional_losses_2524241}O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ±
@__inference_gru_layer_call_and_return_conditional_losses_2524394m?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ±
@__inference_gru_layer_call_and_return_conditional_losses_2524547m?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
%__inference_gru_layer_call_fn_2523902pO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
%__inference_gru_layer_call_fn_2523913pO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
%__inference_gru_layer_call_fn_2523924`?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
%__inference_gru_layer_call_fn_2523935`?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ ´
D__inference_model_2_layer_call_and_return_conditional_losses_2523157l<¢9
2¢/
%"
input_3ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
D__inference_model_2_layer_call_and_return_conditional_losses_2523172l<¢9
2¢/
%"
input_3ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ³
D__inference_model_2_layer_call_and_return_conditional_losses_2523367k;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ³
D__inference_model_2_layer_call_and_return_conditional_losses_2523526k;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_model_2_layer_call_fn_2523082_<¢9
2¢/
%"
input_3ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_2_layer_call_fn_2523142_<¢9
2¢/
%"
input_3ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_2_layer_call_fn_2523193^;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_2_layer_call_fn_2523208^;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
%__inference_signature_wrapper_2523543?¢<
¢ 
5ª2
0
input_3%"
input_3ÿÿÿÿÿÿÿÿÿ"Aª>
<
gru_forcaster_2)&
gru_forcaster_2ÿÿÿÿÿÿÿÿÿ