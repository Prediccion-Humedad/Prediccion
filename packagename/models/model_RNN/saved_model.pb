Æ§
Ü
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
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ß
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
¾
1gru_forcaster_1/simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *B
shared_name31gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel
·
Egru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp1gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel*
_output_shapes

: *
dtype0
Ò
;gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *L
shared_name=;gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel
Ë
Ogru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp;gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:  *
dtype0
¶
/gru_forcaster_1/simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias
¯
Cgru_forcaster_1/simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias*
_output_shapes
: *
dtype0

gru_forcaster_1/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: */
shared_name gru_forcaster_1/dense_1/kernel

2gru_forcaster_1/dense_1/kernel/Read/ReadVariableOpReadVariableOpgru_forcaster_1/dense_1/kernel*
_output_shapes

: *
dtype0

gru_forcaster_1/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namegru_forcaster_1/dense_1/bias

0gru_forcaster_1/dense_1/bias/Read/ReadVariableOpReadVariableOpgru_forcaster_1/dense_1/bias*
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
Ì
8Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *I
shared_name:8Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/m
Å
LAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/m/Read/ReadVariableOpReadVariableOp8Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/m*
_output_shapes

: *
dtype0
à
BAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *S
shared_nameDBAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/m
Ù
VAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpBAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/m*
_output_shapes

:  *
dtype0
Ä
6Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/m
½
JAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/m/Read/ReadVariableOpReadVariableOp6Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/m*
_output_shapes
: *
dtype0
¦
%Adam/gru_forcaster_1/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%Adam/gru_forcaster_1/dense_1/kernel/m

9Adam/gru_forcaster_1/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp%Adam/gru_forcaster_1/dense_1/kernel/m*
_output_shapes

: *
dtype0

#Adam/gru_forcaster_1/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/gru_forcaster_1/dense_1/bias/m

7Adam/gru_forcaster_1/dense_1/bias/m/Read/ReadVariableOpReadVariableOp#Adam/gru_forcaster_1/dense_1/bias/m*
_output_shapes
:*
dtype0
Ì
8Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *I
shared_name:8Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/v
Å
LAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/v/Read/ReadVariableOpReadVariableOp8Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/v*
_output_shapes

: *
dtype0
à
BAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *S
shared_nameDBAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/v
Ù
VAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpBAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/v*
_output_shapes

:  *
dtype0
Ä
6Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/v
½
JAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/v/Read/ReadVariableOpReadVariableOp6Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/v*
_output_shapes
: *
dtype0
¦
%Adam/gru_forcaster_1/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%Adam/gru_forcaster_1/dense_1/kernel/v

9Adam/gru_forcaster_1/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp%Adam/gru_forcaster_1/dense_1/kernel/v*
_output_shapes

: *
dtype0

#Adam/gru_forcaster_1/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/gru_forcaster_1/dense_1/bias/v

7Adam/gru_forcaster_1/dense_1/bias/v/Read/ReadVariableOpReadVariableOp#Adam/gru_forcaster_1/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ù0
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*0
value0B0 B0
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
learning_ratemYmZm[m\m]v^v_v`vavb*
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
ª
$cell
%
state_spec
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
¦

kernel
bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses*
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
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
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
qk
VARIABLE_VALUE1gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE;gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEgru_forcaster_1/dense_1/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEgru_forcaster_1/dense_1/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

70
81*
* 
* 
* 
Ó

kernel
recurrent_kernel
bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=_random_generator
>__call__
*?&call_and_return_all_conditional_losses*
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

@states
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
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
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*
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
	Ktotal
	Lcount
M	variables
N	keras_api*
H
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api*
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
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
9	variables
:trainable_variables
;regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*
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
K0
L1*

M	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

O0
P1*

R	variables*
* 
* 
* 
* 
* 

VARIABLE_VALUE8Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEBAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE%Adam/gru_forcaster_1/dense_1/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adam/gru_forcaster_1/dense_1/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEBAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE%Adam/gru_forcaster_1/dense_1/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adam/gru_forcaster_1/dense_1/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_2Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_21gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias;gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernelgru_forcaster_1/dense_1/kernelgru_forcaster_1/dense_1/bias*
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
%__inference_signature_wrapper_1737152
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ß
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpEgru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpOgru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpCgru_forcaster_1/simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOp2gru_forcaster_1/dense_1/kernel/Read/ReadVariableOp0gru_forcaster_1/dense_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpLAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/m/Read/ReadVariableOpVAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/m/Read/ReadVariableOpJAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/m/Read/ReadVariableOp9Adam/gru_forcaster_1/dense_1/kernel/m/Read/ReadVariableOp7Adam/gru_forcaster_1/dense_1/bias/m/Read/ReadVariableOpLAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/v/Read/ReadVariableOpVAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/v/Read/ReadVariableOpJAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/v/Read/ReadVariableOp9Adam/gru_forcaster_1/dense_1/kernel/v/Read/ReadVariableOp7Adam/gru_forcaster_1/dense_1/bias/v/Read/ReadVariableOpConst*%
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
 __inference__traced_save_1738062
ú
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate1gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel;gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/gru_forcaster_1/simple_rnn/simple_rnn_cell/biasgru_forcaster_1/dense_1/kernelgru_forcaster_1/dense_1/biastotalcounttotal_1count_18Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/mBAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/m6Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/m%Adam/gru_forcaster_1/dense_1/kernel/m#Adam/gru_forcaster_1/dense_1/bias/m8Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/vBAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/v6Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/v%Adam/gru_forcaster_1/dense_1/kernel/v#Adam/gru_forcaster_1/dense_1/bias/v*$
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
#__inference__traced_restore_1738144Ý
6

simple_rnn_while_body_17373382
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0S
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0: P
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0: U
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorQ
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource: N
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource: S
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp¢6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp¢8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ý
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¸
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0à
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¶
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ù
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0Ç
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ç
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%simple_rnn/while/simple_rnn_cell/ReluRelu(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ý
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder3simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:éèÒX
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: 
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: º
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: :éèÒ¦
simple_rnn/while/Identity_4Identity3simple_rnn/while/simple_rnn_cell/Relu:activations:0^simple_rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"Ô
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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
while_cond_1737819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1737819___redundant_placeholder05
1while_while_cond_1737819___redundant_placeholder15
1while_while_cond_1737819___redundant_placeholder25
1while_while_cond_1737819___redundant_placeholder3
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
ª`
Ú
D__inference_model_1_layer_call_and_return_conditional_losses_1737135

inputs[
Igru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource: X
Jgru_forcaster_1_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource: ]
Kgru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:  H
6gru_forcaster_1_dense_1_matmul_readvariableop_resource: E
7gru_forcaster_1_dense_1_biasadd_readvariableop_resource:
identity¢.gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp¢-gru_forcaster_1/dense_1/MatMul/ReadVariableOp¢Agru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp¢@gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp¢Bgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp¢ gru_forcaster_1/simple_rnn/whileV
 gru_forcaster_1/simple_rnn/ShapeShapeinputs*
T0*
_output_shapes
:x
.gru_forcaster_1/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0gru_forcaster_1/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0gru_forcaster_1/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(gru_forcaster_1/simple_rnn/strided_sliceStridedSlice)gru_forcaster_1/simple_rnn/Shape:output:07gru_forcaster_1/simple_rnn/strided_slice/stack:output:09gru_forcaster_1/simple_rnn/strided_slice/stack_1:output:09gru_forcaster_1/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)gru_forcaster_1/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ä
'gru_forcaster_1/simple_rnn/zeros/packedPack1gru_forcaster_1/simple_rnn/strided_slice:output:02gru_forcaster_1/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:k
&gru_forcaster_1/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
 gru_forcaster_1/simple_rnn/zerosFill0gru_forcaster_1/simple_rnn/zeros/packed:output:0/gru_forcaster_1/simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
)gru_forcaster_1/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
$gru_forcaster_1/simple_rnn/transpose	Transposeinputs2gru_forcaster_1/simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
"gru_forcaster_1/simple_rnn/Shape_1Shape(gru_forcaster_1/simple_rnn/transpose:y:0*
T0*
_output_shapes
:z
0gru_forcaster_1/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2gru_forcaster_1/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2gru_forcaster_1/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*gru_forcaster_1/simple_rnn/strided_slice_1StridedSlice+gru_forcaster_1/simple_rnn/Shape_1:output:09gru_forcaster_1/simple_rnn/strided_slice_1/stack:output:0;gru_forcaster_1/simple_rnn/strided_slice_1/stack_1:output:0;gru_forcaster_1/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
6gru_forcaster_1/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
(gru_forcaster_1/simple_rnn/TensorArrayV2TensorListReserve?gru_forcaster_1/simple_rnn/TensorArrayV2/element_shape:output:03gru_forcaster_1/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¡
Pgru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ±
Bgru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(gru_forcaster_1/simple_rnn/transpose:y:0Ygru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒz
0gru_forcaster_1/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2gru_forcaster_1/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2gru_forcaster_1/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
*gru_forcaster_1/simple_rnn/strided_slice_2StridedSlice(gru_forcaster_1/simple_rnn/transpose:y:09gru_forcaster_1/simple_rnn/strided_slice_2/stack:output:0;gru_forcaster_1/simple_rnn/strided_slice_2/stack_1:output:0;gru_forcaster_1/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÊ
@gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpIgru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ì
1gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMulMatMul3gru_forcaster_1/simple_rnn/strided_slice_2:output:0Hgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ È
Agru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpJgru_forcaster_1_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0÷
2gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAddBiasAdd;gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul:product:0Igru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Î
Bgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpKgru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0æ
3gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1MatMul)gru_forcaster_1/simple_rnn/zeros:output:0Jgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ å
.gru_forcaster_1/simple_rnn/simple_rnn_cell/addAddV2;gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd:output:0=gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
/gru_forcaster_1/simple_rnn/simple_rnn_cell/ReluRelu2gru_forcaster_1/simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
8gru_forcaster_1/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
*gru_forcaster_1/simple_rnn/TensorArrayV2_1TensorListReserveAgru_forcaster_1/simple_rnn/TensorArrayV2_1/element_shape:output:03gru_forcaster_1/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒa
gru_forcaster_1/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3gru_forcaster_1/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿo
-gru_forcaster_1/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ³
 gru_forcaster_1/simple_rnn/whileWhile6gru_forcaster_1/simple_rnn/while/loop_counter:output:0<gru_forcaster_1/simple_rnn/while/maximum_iterations:output:0(gru_forcaster_1/simple_rnn/time:output:03gru_forcaster_1/simple_rnn/TensorArrayV2_1:handle:0)gru_forcaster_1/simple_rnn/zeros:output:03gru_forcaster_1/simple_rnn/strided_slice_1:output:0Rgru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Igru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceJgru_forcaster_1_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceKgru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
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
_stateful_parallelism( *9
body1R/
-gru_forcaster_1_simple_rnn_while_body_1737063*9
cond1R/
-gru_forcaster_1_simple_rnn_while_cond_1737062*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
Kgru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
=gru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack)gru_forcaster_1/simple_rnn/while:output:3Tgru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
0gru_forcaster_1/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2gru_forcaster_1/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2gru_forcaster_1/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
*gru_forcaster_1/simple_rnn/strided_slice_3StridedSliceFgru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:09gru_forcaster_1/simple_rnn/strided_slice_3/stack:output:0;gru_forcaster_1/simple_rnn/strided_slice_3/stack_1:output:0;gru_forcaster_1/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
+gru_forcaster_1/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ç
&gru_forcaster_1/simple_rnn/transpose_1	TransposeFgru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:04gru_forcaster_1/simple_rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¤
-gru_forcaster_1/dense_1/MatMul/ReadVariableOpReadVariableOp6gru_forcaster_1_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Æ
gru_forcaster_1/dense_1/MatMulMatMul3gru_forcaster_1/simple_rnn/strided_slice_3:output:05gru_forcaster_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.gru_forcaster_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp7gru_forcaster_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
gru_forcaster_1/dense_1/BiasAddBiasAdd(gru_forcaster_1/dense_1/MatMul:product:06gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(gru_forcaster_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp/^gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp.^gru_forcaster_1/dense_1/MatMul/ReadVariableOpB^gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpA^gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpC^gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp!^gru_forcaster_1/simple_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp.gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp2^
-gru_forcaster_1/dense_1/MatMul/ReadVariableOp-gru_forcaster_1/dense_1/MatMul/ReadVariableOp2
Agru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpAgru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2
@gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp@gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2
Bgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpBgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2D
 gru_forcaster_1/simple_rnn/while gru_forcaster_1/simple_rnn/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç	
õ
D__inference_dense_1_layer_call_and_return_conditional_losses_1737905

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

é
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1737967

inputs
states_00
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 2
 matmul_1_readvariableop_resource:  
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ G
ReluReluadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
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
E
å
-gru_forcaster_1_simple_rnn_while_body_1736949R
Ngru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_loop_counterX
Tgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_maximum_iterations0
,gru_forcaster_1_simple_rnn_while_placeholder2
.gru_forcaster_1_simple_rnn_while_placeholder_12
.gru_forcaster_1_simple_rnn_while_placeholder_2Q
Mgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_strided_slice_1_0
gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0c
Qgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0: `
Rgru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0: e
Sgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  -
)gru_forcaster_1_simple_rnn_while_identity/
+gru_forcaster_1_simple_rnn_while_identity_1/
+gru_forcaster_1_simple_rnn_while_identity_2/
+gru_forcaster_1_simple_rnn_while_identity_3/
+gru_forcaster_1_simple_rnn_while_identity_4O
Kgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_strided_slice_1
gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensora
Ogru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource: ^
Pgru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource: c
Qgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢Ggru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp¢Fgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp¢Hgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp£
Rgru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ®
Dgru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemgru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0,gru_forcaster_1_simple_rnn_while_placeholder[gru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ø
Fgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpQgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0
7gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMulMatMulKgru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Ngru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ö
Ggru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpRgru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
8gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAddBiasAddAgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul:product:0Ogru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ü
Hgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpSgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0÷
9gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul.gru_forcaster_1_simple_rnn_while_placeholder_2Pgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ÷
4gru_forcaster_1/simple_rnn/while/simple_rnn_cell/addAddV2Agru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0Cgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ©
5gru_forcaster_1/simple_rnn/while/simple_rnn_cell/ReluRelu8gru_forcaster_1/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ½
Egru_forcaster_1/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.gru_forcaster_1_simple_rnn_while_placeholder_1,gru_forcaster_1_simple_rnn_while_placeholderCgru_forcaster_1/simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:éèÒh
&gru_forcaster_1/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :­
$gru_forcaster_1/simple_rnn/while/addAddV2,gru_forcaster_1_simple_rnn_while_placeholder/gru_forcaster_1/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: j
(gru_forcaster_1/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ó
&gru_forcaster_1/simple_rnn/while/add_1AddV2Ngru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_loop_counter1gru_forcaster_1/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: ª
)gru_forcaster_1/simple_rnn/while/IdentityIdentity*gru_forcaster_1/simple_rnn/while/add_1:z:0&^gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: Ö
+gru_forcaster_1/simple_rnn/while/Identity_1IdentityTgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_maximum_iterations&^gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: ª
+gru_forcaster_1/simple_rnn/while/Identity_2Identity(gru_forcaster_1/simple_rnn/while/add:z:0&^gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: ê
+gru_forcaster_1/simple_rnn/while/Identity_3IdentityUgru_forcaster_1/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: :éèÒÖ
+gru_forcaster_1/simple_rnn/while/Identity_4IdentityCgru_forcaster_1/simple_rnn/while/simple_rnn_cell/Relu:activations:0&^gru_forcaster_1/simple_rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Å
%gru_forcaster_1/simple_rnn/while/NoOpNoOpH^gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpG^gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpI^gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Kgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_strided_slice_1Mgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_strided_slice_1_0"_
)gru_forcaster_1_simple_rnn_while_identity2gru_forcaster_1/simple_rnn/while/Identity:output:0"c
+gru_forcaster_1_simple_rnn_while_identity_14gru_forcaster_1/simple_rnn/while/Identity_1:output:0"c
+gru_forcaster_1_simple_rnn_while_identity_24gru_forcaster_1/simple_rnn/while/Identity_2:output:0"c
+gru_forcaster_1_simple_rnn_while_identity_34gru_forcaster_1/simple_rnn/while/Identity_3:output:0"c
+gru_forcaster_1_simple_rnn_while_identity_44gru_forcaster_1/simple_rnn/while/Identity_4:output:0"¦
Pgru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceRgru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"¨
Qgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceSgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"¤
Ogru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceQgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"
gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensorgru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2
Ggru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpGgru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Fgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpFgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2
Hgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpHgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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
while_cond_1736411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1736411___redundant_placeholder05
1while_while_cond_1736411___redundant_placeholder15
1while_while_cond_1736411___redundant_placeholder25
1while_while_cond_1736411___redundant_placeholder3
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
û+
·
while_body_1736581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0: E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0: J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource: C
5while_simple_rnn_cell_biasadd_readvariableop_resource: H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¢
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0¿
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¸
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0¦
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ñ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder(while/simple_rnn_cell/Relu:activations:0*
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
: :éèÒ
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ù

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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
while_cond_1736291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1736291___redundant_placeholder05
1while_while_cond_1736291___redundant_placeholder15
1while_while_cond_1736291___redundant_placeholder25
1while_while_cond_1736291___redundant_placeholder3
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
à
ò
1__inference_gru_forcaster_1_layer_call_fn_1736516
input_1
unknown: 
	unknown_0: 
	unknown_1:  
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
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736503o
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

â
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736503

inputs$
simple_rnn_1736479:  
simple_rnn_1736481: $
simple_rnn_1736483:  !
dense_1_1736497: 
dense_1_1736499:
identity¢dense_1/StatefulPartitionedCall¢"simple_rnn/StatefulPartitionedCall
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_1736479simple_rnn_1736481simple_rnn_1736483*
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
GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736478
dense_1/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0dense_1_1736497dense_1_1736499*
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
D__inference_dense_1_layer_call_and_return_conditional_losses_1736496w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_1/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ç
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1736120

inputs

states0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 2
 matmul_1_readvariableop_resource:  
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ G
ReluReluadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates



simple_rnn_while_cond_17372232
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1K
Gsimple_rnn_while_simple_rnn_while_cond_1737223___redundant_placeholder0K
Gsimple_rnn_while_simple_rnn_while_cond_1737223___redundant_placeholder1K
Gsimple_rnn_while_simple_rnn_while_cond_1737223___redundant_placeholder2K
Gsimple_rnn_while_simple_rnn_while_cond_1737223___redundant_placeholder3
simple_rnn_while_identity

simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
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

é
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1737950

inputs
states_00
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 2
 matmul_1_readvariableop_resource:  
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ G
ReluReluadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
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
ÊN
²
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1737296

inputsK
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource: H
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource: M
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:  8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp¢0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp¢2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp¢simple_rnn/whileF
simple_rnn/ShapeShapeinputs*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn/transpose	Transposeinputs"simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÕ
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒj
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskª
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0¼
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¨
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ç
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0¶
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ µ
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
simple_rnn/simple_rnn_cell/ReluRelu"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ù
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒQ
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ_
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ã
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
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
_stateful_parallelism( *)
body!R
simple_rnn_while_body_1737224*)
cond!R
simple_rnn_while_cond_1737223*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ã
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿl
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ·
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_1/MatMulMatMul#simple_rnn/strided_slice_3:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÊN
²
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1737410

inputsK
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource: H
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource: M
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:  8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp¢0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp¢2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp¢simple_rnn/whileF
simple_rnn/ShapeShapeinputs*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn/transpose	Transposeinputs"simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÕ
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒj
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskª
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0¼
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¨
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ç
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ®
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0¶
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ µ
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
simple_rnn/simple_rnn_cell/ReluRelu"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ù
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒQ
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ_
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ã
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
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
_stateful_parallelism( *)
body!R
simple_rnn_while_body_1737338*)
cond!R
simple_rnn_while_cond_1737337*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ã
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿl
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ·
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_1/MatMulMatMul#simple_rnn/strided_slice_3:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å

)__inference_dense_1_layer_call_fn_1737895

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
D__inference_dense_1_layer_call_and_return_conditional_losses_1736496o
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
à<
®
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736647

inputs@
.simple_rnn_cell_matmul_readvariableop_resource: =
/simple_rnn_cell_biasadd_readvariableop_resource: B
0simple_rnn_cell_matmul_1_readvariableop_resource:  
identity¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¦
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
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
value	B : Ô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
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
while_body_1736581*
condR
while_cond_1736580*8
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
:ÿÿÿÿÿÿÿÿÿ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ç
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1736240

inputs

states0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 2
 matmul_1_readvariableop_resource:  
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ G
ReluReluadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c

Identity_1IdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
û+
·
while_body_1737496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0: E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0: J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource: C
5while_simple_rnn_cell_biasadd_readvariableop_resource: H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¢
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0¿
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¸
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0¦
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ñ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder(while/simple_rnn_cell/Relu:activations:0*
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
: :éèÒ
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ù

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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
D__inference_dense_1_layer_call_and_return_conditional_losses_1736496

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
à
ò
1__inference_gru_forcaster_1_layer_call_fn_1736717
input_1
unknown: 
	unknown_0: 
	unknown_1:  
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
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736689o
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
ÿ
¶
,__inference_simple_rnn_layer_call_fn_1737443

inputs
unknown: 
	unknown_0: 
	unknown_1:  
identity¢StatefulPartitionedCallì
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
GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736478o
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
ª
æ
%__inference_signature_wrapper_1737152
input_2
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
"__inference__wrapped_model_1736072o
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
_user_specified_name	input_2
ù3

G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736355

inputs)
simple_rnn_cell_1736280: %
simple_rnn_cell_1736282: )
simple_rnn_cell_1736284:  
identity¢'simple_rnn_cell/StatefulPartitionedCall¢while;
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
shrink_axis_maskä
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1736280simple_rnn_cell_1736282simple_rnn_cell_1736284*
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
GPU2*0J 8 *U
fPRN
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1736240n
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1736280simple_rnn_cell_1736282simple_rnn_cell_1736284*
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
while_body_1736292*
condR
while_cond_1736291*8
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º

Ù
1__inference_simple_rnn_cell_layer_call_fn_1737933

inputs
states_0
unknown: 
	unknown_0: 
	unknown_1:  
identity

identity_1¢StatefulPartitionedCall
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
GPU2*0J 8 *U
fPRN
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1736240o
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
û+
·
while_body_1737604
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0: E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0: J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource: C
5while_simple_rnn_cell_biasadd_readvariableop_resource: H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¢
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0¿
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¸
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0¦
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ñ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder(while/simple_rnn_cell/Relu:activations:0*
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
: :éèÒ
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ù

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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
Í
é
)__inference_model_1_layer_call_fn_1736907

inputs
unknown: 
	unknown_0: 
	unknown_1:  
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
D__inference_model_1_layer_call_and_return_conditional_losses_1736813o
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
6

simple_rnn_while_body_17372242
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0S
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0: P
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0: U
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorQ
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource: N
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource: S
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp¢6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp¢8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ý
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¸
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0à
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¶
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ù
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0Ç
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ç
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%simple_rnn/while/simple_rnn_cell/ReluRelu(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ý
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder3simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:éèÒX
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: 
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: º
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: :éèÒ¦
simple_rnn/while/Identity_4Identity3simple_rnn/while/simple_rnn_cell/Relu:activations:0^simple_rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"Ô
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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
Ð
ê
)__inference_model_1_layer_call_fn_1736781
input_2
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
D__inference_model_1_layer_call_and_return_conditional_losses_1736768o
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
_user_specified_name	input_2
Ý
ñ
1__inference_gru_forcaster_1_layer_call_fn_1737182

inputs
unknown: 
	unknown_0: 
	unknown_1:  
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
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736689o
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
º

Ù
1__inference_simple_rnn_cell_layer_call_fn_1737919

inputs
states_0
unknown: 
	unknown_0: 
	unknown_1:  
identity

identity_1¢StatefulPartitionedCall
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
GPU2*0J 8 *U
fPRN
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1736120o
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
Ì;

 __inference__traced_save_1738062
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopP
Lsavev2_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel_read_readvariableopZ
Vsavev2_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableopN
Jsavev2_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias_read_readvariableop=
9savev2_gru_forcaster_1_dense_1_kernel_read_readvariableop;
7savev2_gru_forcaster_1_dense_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopW
Ssavev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel_m_read_readvariableopa
]savev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel_m_read_readvariableopU
Qsavev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias_m_read_readvariableopD
@savev2_adam_gru_forcaster_1_dense_1_kernel_m_read_readvariableopB
>savev2_adam_gru_forcaster_1_dense_1_bias_m_read_readvariableopW
Ssavev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel_v_read_readvariableopa
]savev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel_v_read_readvariableopU
Qsavev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias_v_read_readvariableopD
@savev2_adam_gru_forcaster_1_dense_1_kernel_v_read_readvariableopB
>savev2_adam_gru_forcaster_1_dense_1_bias_v_read_readvariableop
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
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopLsavev2_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel_read_readvariableopVsavev2_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableopJsavev2_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias_read_readvariableop9savev2_gru_forcaster_1_dense_1_kernel_read_readvariableop7savev2_gru_forcaster_1_dense_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopSsavev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel_m_read_readvariableop]savev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel_m_read_readvariableopQsavev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias_m_read_readvariableop@savev2_adam_gru_forcaster_1_dense_1_kernel_m_read_readvariableop>savev2_adam_gru_forcaster_1_dense_1_bias_m_read_readvariableopSsavev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel_v_read_readvariableop]savev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel_v_read_readvariableopQsavev2_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias_v_read_readvariableop@savev2_adam_gru_forcaster_1_dense_1_kernel_v_read_readvariableop>savev2_adam_gru_forcaster_1_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

identity_1Identity_1:output:0*©
_input_shapes
: : : : : : : :  : : :: : : : : :  : : :: :  : : :: 2(
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

: :$ 

_output_shapes

:  : 

_output_shapes
: :$	 

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

: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
ï 
Ê
while_body_1736133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_1736155_0: -
while_simple_rnn_cell_1736157_0: 1
while_simple_rnn_cell_1736159_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_1736155: +
while_simple_rnn_cell_1736157: /
while_simple_rnn_cell_1736159:  ¢-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_1736155_0while_simple_rnn_cell_1736157_0while_simple_rnn_cell_1736159_0*
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
GPU2*0J 8 *U
fPRN
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1736120ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
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
: :éèÒ
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_1736155while_simple_rnn_cell_1736155_0"@
while_simple_rnn_cell_1736157while_simple_rnn_cell_1736157_0"@
while_simple_rnn_cell_1736159while_simple_rnn_cell_1736159_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 
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
i

"__inference__wrapped_model_1736072
input_2c
Qmodel_1_gru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource: `
Rmodel_1_gru_forcaster_1_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource: e
Smodel_1_gru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:  P
>model_1_gru_forcaster_1_dense_1_matmul_readvariableop_resource: M
?model_1_gru_forcaster_1_dense_1_biasadd_readvariableop_resource:
identity¢6model_1/gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp¢5model_1/gru_forcaster_1/dense_1/MatMul/ReadVariableOp¢Imodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp¢Hmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp¢Jmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp¢(model_1/gru_forcaster_1/simple_rnn/while_
(model_1/gru_forcaster_1/simple_rnn/ShapeShapeinput_2*
T0*
_output_shapes
:
6model_1/gru_forcaster_1/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8model_1/gru_forcaster_1/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8model_1/gru_forcaster_1/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0model_1/gru_forcaster_1/simple_rnn/strided_sliceStridedSlice1model_1/gru_forcaster_1/simple_rnn/Shape:output:0?model_1/gru_forcaster_1/simple_rnn/strided_slice/stack:output:0Amodel_1/gru_forcaster_1/simple_rnn/strided_slice/stack_1:output:0Amodel_1/gru_forcaster_1/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1model_1/gru_forcaster_1/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ü
/model_1/gru_forcaster_1/simple_rnn/zeros/packedPack9model_1/gru_forcaster_1/simple_rnn/strided_slice:output:0:model_1/gru_forcaster_1/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:s
.model_1/gru_forcaster_1/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Õ
(model_1/gru_forcaster_1/simple_rnn/zerosFill8model_1/gru_forcaster_1/simple_rnn/zeros/packed:output:07model_1/gru_forcaster_1/simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
1model_1/gru_forcaster_1/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ´
,model_1/gru_forcaster_1/simple_rnn/transpose	Transposeinput_2:model_1/gru_forcaster_1/simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_1/gru_forcaster_1/simple_rnn/Shape_1Shape0model_1/gru_forcaster_1/simple_rnn/transpose:y:0*
T0*
_output_shapes
:
8model_1/gru_forcaster_1/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:model_1/gru_forcaster_1/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:model_1/gru_forcaster_1/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2model_1/gru_forcaster_1/simple_rnn/strided_slice_1StridedSlice3model_1/gru_forcaster_1/simple_rnn/Shape_1:output:0Amodel_1/gru_forcaster_1/simple_rnn/strided_slice_1/stack:output:0Cmodel_1/gru_forcaster_1/simple_rnn/strided_slice_1/stack_1:output:0Cmodel_1/gru_forcaster_1/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
>model_1/gru_forcaster_1/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
0model_1/gru_forcaster_1/simple_rnn/TensorArrayV2TensorListReserveGmodel_1/gru_forcaster_1/simple_rnn/TensorArrayV2/element_shape:output:0;model_1/gru_forcaster_1/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ©
Xmodel_1/gru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   É
Jmodel_1/gru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor0model_1/gru_forcaster_1/simple_rnn/transpose:y:0amodel_1/gru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
8model_1/gru_forcaster_1/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:model_1/gru_forcaster_1/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:model_1/gru_forcaster_1/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2model_1/gru_forcaster_1/simple_rnn/strided_slice_2StridedSlice0model_1/gru_forcaster_1/simple_rnn/transpose:y:0Amodel_1/gru_forcaster_1/simple_rnn/strided_slice_2/stack:output:0Cmodel_1/gru_forcaster_1/simple_rnn/strided_slice_2/stack_1:output:0Cmodel_1/gru_forcaster_1/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÚ
Hmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpQmodel_1_gru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
9model_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMulMatMul;model_1/gru_forcaster_1/simple_rnn/strided_slice_2:output:0Pmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ø
Imodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpRmodel_1_gru_forcaster_1_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
:model_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAddBiasAddCmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul:product:0Qmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Þ
Jmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpSmodel_1_gru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0þ
;model_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1MatMul1model_1/gru_forcaster_1/simple_rnn/zeros:output:0Rmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ý
6model_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/addAddV2Cmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd:output:0Emodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
7model_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/ReluRelu:model_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
@model_1/gru_forcaster_1/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¡
2model_1/gru_forcaster_1/simple_rnn/TensorArrayV2_1TensorListReserveImodel_1/gru_forcaster_1/simple_rnn/TensorArrayV2_1/element_shape:output:0;model_1/gru_forcaster_1/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒi
'model_1/gru_forcaster_1/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 
;model_1/gru_forcaster_1/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿw
5model_1/gru_forcaster_1/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
(model_1/gru_forcaster_1/simple_rnn/whileWhile>model_1/gru_forcaster_1/simple_rnn/while/loop_counter:output:0Dmodel_1/gru_forcaster_1/simple_rnn/while/maximum_iterations:output:00model_1/gru_forcaster_1/simple_rnn/time:output:0;model_1/gru_forcaster_1/simple_rnn/TensorArrayV2_1:handle:01model_1/gru_forcaster_1/simple_rnn/zeros:output:0;model_1/gru_forcaster_1/simple_rnn/strided_slice_1:output:0Zmodel_1/gru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Qmodel_1_gru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceRmodel_1_gru_forcaster_1_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceSmodel_1_gru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
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
_stateful_parallelism( *A
body9R7
5model_1_gru_forcaster_1_simple_rnn_while_body_1736000*A
cond9R7
5model_1_gru_forcaster_1_simple_rnn_while_cond_1735999*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations ¤
Smodel_1/gru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    «
Emodel_1/gru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack1model_1/gru_forcaster_1/simple_rnn/while:output:3\model_1/gru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
8model_1/gru_forcaster_1/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
:model_1/gru_forcaster_1/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
:model_1/gru_forcaster_1/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
2model_1/gru_forcaster_1/simple_rnn/strided_slice_3StridedSliceNmodel_1/gru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0Amodel_1/gru_forcaster_1/simple_rnn/strided_slice_3/stack:output:0Cmodel_1/gru_forcaster_1/simple_rnn/strided_slice_3/stack_1:output:0Cmodel_1/gru_forcaster_1/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
3model_1/gru_forcaster_1/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ÿ
.model_1/gru_forcaster_1/simple_rnn/transpose_1	TransposeNmodel_1/gru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0<model_1/gru_forcaster_1/simple_rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
5model_1/gru_forcaster_1/dense_1/MatMul/ReadVariableOpReadVariableOp>model_1_gru_forcaster_1_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Þ
&model_1/gru_forcaster_1/dense_1/MatMulMatMul;model_1/gru_forcaster_1/simple_rnn/strided_slice_3:output:0=model_1/gru_forcaster_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
6model_1/gru_forcaster_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp?model_1_gru_forcaster_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ö
'model_1/gru_forcaster_1/dense_1/BiasAddBiasAdd0model_1/gru_forcaster_1/dense_1/MatMul:product:0>model_1/gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity0model_1/gru_forcaster_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
NoOpNoOp7^model_1/gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp6^model_1/gru_forcaster_1/dense_1/MatMul/ReadVariableOpJ^model_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpI^model_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpK^model_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp)^model_1/gru_forcaster_1/simple_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2p
6model_1/gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp6model_1/gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp2n
5model_1/gru_forcaster_1/dense_1/MatMul/ReadVariableOp5model_1/gru_forcaster_1/dense_1/MatMul/ReadVariableOp2
Imodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpImodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2
Hmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpHmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2
Jmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpJmodel_1/gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2T
(model_1/gru_forcaster_1/simple_rnn/while(model_1/gru_forcaster_1/simple_rnn/while:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
Í
é
)__inference_model_1_layer_call_fn_1736892

inputs
unknown: 
	unknown_0: 
	unknown_1:  
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
D__inference_model_1_layer_call_and_return_conditional_losses_1736768o
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
Ý
ñ
1__inference_gru_forcaster_1_layer_call_fn_1737167

inputs
unknown: 
	unknown_0: 
	unknown_1:  
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
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736503o
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
ß
¯
while_cond_1737603
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1737603___redundant_placeholder05
1while_while_cond_1737603___redundant_placeholder15
1while_while_cond_1737603___redundant_placeholder25
1while_while_cond_1737603___redundant_placeholder3
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
º
°
-gru_forcaster_1_simple_rnn_while_cond_1736948R
Ngru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_loop_counterX
Tgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_maximum_iterations0
,gru_forcaster_1_simple_rnn_while_placeholder2
.gru_forcaster_1_simple_rnn_while_placeholder_12
.gru_forcaster_1_simple_rnn_while_placeholder_2T
Pgru_forcaster_1_simple_rnn_while_less_gru_forcaster_1_simple_rnn_strided_slice_1k
ggru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_cond_1736948___redundant_placeholder0k
ggru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_cond_1736948___redundant_placeholder1k
ggru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_cond_1736948___redundant_placeholder2k
ggru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_cond_1736948___redundant_placeholder3-
)gru_forcaster_1_simple_rnn_while_identity
Î
%gru_forcaster_1/simple_rnn/while/LessLess,gru_forcaster_1_simple_rnn_while_placeholderPgru_forcaster_1_simple_rnn_while_less_gru_forcaster_1_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 
)gru_forcaster_1/simple_rnn/while/IdentityIdentity)gru_forcaster_1/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "_
)gru_forcaster_1_simple_rnn_while_identity2gru_forcaster_1/simple_rnn/while/Identity:output:0*(
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
while_cond_1737711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1737711___redundant_placeholder05
1while_while_cond_1737711___redundant_placeholder15
1while_while_cond_1737711___redundant_placeholder25
1while_while_cond_1737711___redundant_placeholder3
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
ß
¯
while_cond_1737495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1737495___redundant_placeholder05
1while_while_cond_1737495___redundant_placeholder15
1while_while_cond_1737495___redundant_placeholder25
1while_while_cond_1737495___redundant_placeholder3
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
û+
·
while_body_1737712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0: E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0: J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource: C
5while_simple_rnn_cell_biasadd_readvariableop_resource: H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¢
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0¿
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¸
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0¦
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ñ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder(while/simple_rnn_cell/Relu:activations:0*
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
: :éèÒ
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ù

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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

¸
,__inference_simple_rnn_layer_call_fn_1737432
inputs_0
unknown: 
	unknown_0: 
	unknown_1:  
identity¢StatefulPartitionedCallî
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
GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736355o
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
ù3

G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736196

inputs)
simple_rnn_cell_1736121: %
simple_rnn_cell_1736123: )
simple_rnn_cell_1736125:  
identity¢'simple_rnn_cell/StatefulPartitionedCall¢while;
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
shrink_axis_maskä
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1736121simple_rnn_cell_1736123simple_rnn_cell_1736125*
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
GPU2*0J 8 *U
fPRN
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1736120n
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1736121simple_rnn_cell_1736123simple_rnn_cell_1736125*
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
while_body_1736133*
condR
while_cond_1736132*8
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÔL
Õ
5model_1_gru_forcaster_1_simple_rnn_while_body_1736000b
^model_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_while_loop_counterh
dmodel_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_while_maximum_iterations8
4model_1_gru_forcaster_1_simple_rnn_while_placeholder:
6model_1_gru_forcaster_1_simple_rnn_while_placeholder_1:
6model_1_gru_forcaster_1_simple_rnn_while_placeholder_2a
]model_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_strided_slice_1_0
model_1_gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0k
Ymodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0: h
Zmodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0: m
[model_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  5
1model_1_gru_forcaster_1_simple_rnn_while_identity7
3model_1_gru_forcaster_1_simple_rnn_while_identity_17
3model_1_gru_forcaster_1_simple_rnn_while_identity_27
3model_1_gru_forcaster_1_simple_rnn_while_identity_37
3model_1_gru_forcaster_1_simple_rnn_while_identity_4_
[model_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_strided_slice_1
model_1_gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensori
Wmodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource: f
Xmodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource: k
Ymodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢Omodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp¢Nmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp¢Pmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp«
Zmodel_1/gru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
Lmodel_1/gru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodel_1_gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensor_04model_1_gru_forcaster_1_simple_rnn_while_placeholdercmodel_1/gru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0è
Nmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpYmodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0¨
?model_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMulMatMulSmodel_1/gru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Vmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ æ
Omodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpZmodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¡
@model_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAddBiasAddImodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul:product:0Wmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ì
Pmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp[model_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0
Amodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul6model_1_gru_forcaster_1_simple_rnn_while_placeholder_2Xmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
<model_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/addAddV2Imodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0Kmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¹
=model_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/ReluRelu@model_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ý
Mmodel_1/gru_forcaster_1/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem6model_1_gru_forcaster_1_simple_rnn_while_placeholder_14model_1_gru_forcaster_1_simple_rnn_while_placeholderKmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:éèÒp
.model_1/gru_forcaster_1/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Å
,model_1/gru_forcaster_1/simple_rnn/while/addAddV24model_1_gru_forcaster_1_simple_rnn_while_placeholder7model_1/gru_forcaster_1/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: r
0model_1/gru_forcaster_1/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ó
.model_1/gru_forcaster_1/simple_rnn/while/add_1AddV2^model_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_while_loop_counter9model_1/gru_forcaster_1/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: Â
1model_1/gru_forcaster_1/simple_rnn/while/IdentityIdentity2model_1/gru_forcaster_1/simple_rnn/while/add_1:z:0.^model_1/gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: ö
3model_1/gru_forcaster_1/simple_rnn/while/Identity_1Identitydmodel_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_while_maximum_iterations.^model_1/gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: Â
3model_1/gru_forcaster_1/simple_rnn/while/Identity_2Identity0model_1/gru_forcaster_1/simple_rnn/while/add:z:0.^model_1/gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: 
3model_1/gru_forcaster_1/simple_rnn/while/Identity_3Identity]model_1/gru_forcaster_1/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^model_1/gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: :éèÒî
3model_1/gru_forcaster_1/simple_rnn/while/Identity_4IdentityKmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/Relu:activations:0.^model_1/gru_forcaster_1/simple_rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ å
-model_1/gru_forcaster_1/simple_rnn/while/NoOpNoOpP^model_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpO^model_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpQ^model_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "o
1model_1_gru_forcaster_1_simple_rnn_while_identity:model_1/gru_forcaster_1/simple_rnn/while/Identity:output:0"s
3model_1_gru_forcaster_1_simple_rnn_while_identity_1<model_1/gru_forcaster_1/simple_rnn/while/Identity_1:output:0"s
3model_1_gru_forcaster_1_simple_rnn_while_identity_2<model_1/gru_forcaster_1/simple_rnn/while/Identity_2:output:0"s
3model_1_gru_forcaster_1_simple_rnn_while_identity_3<model_1/gru_forcaster_1/simple_rnn/while/Identity_3:output:0"s
3model_1_gru_forcaster_1_simple_rnn_while_identity_4<model_1/gru_forcaster_1/simple_rnn/while/Identity_4:output:0"¼
[model_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_strided_slice_1]model_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_strided_slice_1_0"¶
Xmodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceZmodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"¸
Ymodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource[model_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"´
Wmodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceYmodel_1_gru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"¶
model_1_gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensormodel_1_gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2¢
Omodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpOmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2 
Nmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpNmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2¤
Pmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpPmodel_1/gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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
ã

Ý
D__inference_model_1_layer_call_and_return_conditional_losses_1736871
input_2)
gru_forcaster_1_1736859: %
gru_forcaster_1_1736861: )
gru_forcaster_1_1736863:  )
gru_forcaster_1_1736865: %
gru_forcaster_1_1736867:
identity¢'gru_forcaster_1/StatefulPartitionedCallä
'gru_forcaster_1/StatefulPartitionedCallStatefulPartitionedCallinput_2gru_forcaster_1_1736859gru_forcaster_1_1736861gru_forcaster_1_1736863gru_forcaster_1_1736865gru_forcaster_1_1736867*
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
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736689
IdentityIdentity0gru_forcaster_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
NoOpNoOp(^gru_forcaster_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2R
'gru_forcaster_1/StatefulPartitionedCall'gru_forcaster_1/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2

¸
,__inference_simple_rnn_layer_call_fn_1737421
inputs_0
unknown: 
	unknown_0: 
	unknown_1:  
identity¢StatefulPartitionedCallî
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
GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736196o
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

â
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736689

inputs$
simple_rnn_1736676:  
simple_rnn_1736678: $
simple_rnn_1736680:  !
dense_1_1736683: 
dense_1_1736685:
identity¢dense_1/StatefulPartitionedCall¢"simple_rnn/StatefulPartitionedCall
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_1736676simple_rnn_1736678simple_rnn_1736680*
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
GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736647
dense_1/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0dense_1_1736683dense_1_1736685*
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
D__inference_dense_1_layer_call_and_return_conditional_losses_1736496w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_1/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à<
®
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736478

inputs@
.simple_rnn_cell_matmul_readvariableop_resource: =
/simple_rnn_cell_biasadd_readvariableop_resource: B
0simple_rnn_cell_matmul_1_readvariableop_resource:  
identity¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¦
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
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
value	B : Ô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
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
while_body_1736412*
condR
while_cond_1736411*8
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
:ÿÿÿÿÿÿÿÿÿ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
°
-gru_forcaster_1_simple_rnn_while_cond_1737062R
Ngru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_loop_counterX
Tgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_maximum_iterations0
,gru_forcaster_1_simple_rnn_while_placeholder2
.gru_forcaster_1_simple_rnn_while_placeholder_12
.gru_forcaster_1_simple_rnn_while_placeholder_2T
Pgru_forcaster_1_simple_rnn_while_less_gru_forcaster_1_simple_rnn_strided_slice_1k
ggru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_cond_1737062___redundant_placeholder0k
ggru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_cond_1737062___redundant_placeholder1k
ggru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_cond_1737062___redundant_placeholder2k
ggru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_cond_1737062___redundant_placeholder3-
)gru_forcaster_1_simple_rnn_while_identity
Î
%gru_forcaster_1/simple_rnn/while/LessLess,gru_forcaster_1_simple_rnn_while_placeholderPgru_forcaster_1_simple_rnn_while_less_gru_forcaster_1_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 
)gru_forcaster_1/simple_rnn/while/IdentityIdentity)gru_forcaster_1/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "_
)gru_forcaster_1_simple_rnn_while_identity2gru_forcaster_1/simple_rnn/while/Identity:output:0*(
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
Ð
ê
)__inference_model_1_layer_call_fn_1736841
input_2
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
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
D__inference_model_1_layer_call_and_return_conditional_losses_1736813o
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
_user_specified_name	input_2
à<
®
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737778

inputs@
.simple_rnn_cell_matmul_readvariableop_resource: =
/simple_rnn_cell_biasadd_readvariableop_resource: B
0simple_rnn_cell_matmul_1_readvariableop_resource:  
identity¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¦
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
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
value	B : Ô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
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
while_body_1737712*
condR
while_cond_1737711*8
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
:ÿÿÿÿÿÿÿÿÿ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û+
·
while_body_1737820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0: E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0: J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource: C
5while_simple_rnn_cell_biasadd_readvariableop_resource: H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¢
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0¿
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¸
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0¦
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ñ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder(while/simple_rnn_cell/Relu:activations:0*
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
: :éèÒ
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ù

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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
ée
º
#__inference__traced_restore_1738144
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: V
Dassignvariableop_5_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel: `
Nassignvariableop_6_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel:  P
Bassignvariableop_7_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias: C
1assignvariableop_8_gru_forcaster_1_dense_1_kernel: =
/assignvariableop_9_gru_forcaster_1_dense_1_bias:#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: ^
Lassignvariableop_14_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel_m: h
Vassignvariableop_15_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel_m:  X
Jassignvariableop_16_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias_m: K
9assignvariableop_17_adam_gru_forcaster_1_dense_1_kernel_m: E
7assignvariableop_18_adam_gru_forcaster_1_dense_1_bias_m:^
Lassignvariableop_19_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel_v: h
Vassignvariableop_20_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel_v:  X
Jassignvariableop_21_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias_v: K
9assignvariableop_22_adam_gru_forcaster_1_dense_1_kernel_v: E
7assignvariableop_23_adam_gru_forcaster_1_dense_1_bias_v:
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
:³
AssignVariableOp_5AssignVariableOpDassignvariableop_5_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_6AssignVariableOpNassignvariableop_6_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_7AssignVariableOpBassignvariableop_7_gru_forcaster_1_simple_rnn_simple_rnn_cell_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_8AssignVariableOp1assignvariableop_8_gru_forcaster_1_dense_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp/assignvariableop_9_gru_forcaster_1_dense_1_biasIdentity_9:output:0"/device:CPU:0*
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
:½
AssignVariableOp_14AssignVariableOpLassignvariableop_14_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_15AssignVariableOpVassignvariableop_15_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_16AssignVariableOpJassignvariableop_16_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_17AssignVariableOp9assignvariableop_17_adam_gru_forcaster_1_dense_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_18AssignVariableOp7assignvariableop_18_adam_gru_forcaster_1_dense_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_19AssignVariableOpLassignvariableop_19_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_20AssignVariableOpVassignvariableop_20_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_21AssignVariableOpJassignvariableop_21_adam_gru_forcaster_1_simple_rnn_simple_rnn_cell_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_22AssignVariableOp9assignvariableop_22_adam_gru_forcaster_1_dense_1_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_23AssignVariableOp7assignvariableop_23_adam_gru_forcaster_1_dense_1_bias_vIdentity_23:output:0"/device:CPU:0*
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
=
°
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737670
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource: =
/simple_rnn_cell_biasadd_readvariableop_resource: B
0simple_rnn_cell_matmul_1_readvariableop_resource:  
identity¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¦
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
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
value	B : Ô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
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
while_body_1737604*
condR
while_cond_1737603*8
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
à

Ü
D__inference_model_1_layer_call_and_return_conditional_losses_1736768

inputs)
gru_forcaster_1_1736756: %
gru_forcaster_1_1736758: )
gru_forcaster_1_1736760:  )
gru_forcaster_1_1736762: %
gru_forcaster_1_1736764:
identity¢'gru_forcaster_1/StatefulPartitionedCallã
'gru_forcaster_1/StatefulPartitionedCallStatefulPartitionedCallinputsgru_forcaster_1_1736756gru_forcaster_1_1736758gru_forcaster_1_1736760gru_forcaster_1_1736762gru_forcaster_1_1736764*
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
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736503
IdentityIdentity0gru_forcaster_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
NoOpNoOp(^gru_forcaster_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2R
'gru_forcaster_1/StatefulPartitionedCall'gru_forcaster_1/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
¯
while_cond_1736580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1736580___redundant_placeholder05
1while_while_cond_1736580___redundant_placeholder15
1while_while_cond_1736580___redundant_placeholder25
1while_while_cond_1736580___redundant_placeholder3
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

ã
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736749
input_1$
simple_rnn_1736736:  
simple_rnn_1736738: $
simple_rnn_1736740:  !
dense_1_1736743: 
dense_1_1736745:
identity¢dense_1/StatefulPartitionedCall¢"simple_rnn/StatefulPartitionedCall
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallinput_1simple_rnn_1736736simple_rnn_1736738simple_rnn_1736740*
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
GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736647
dense_1/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0dense_1_1736743dense_1_1736745*
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
D__inference_dense_1_layer_call_and_return_conditional_losses_1736496w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_1/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
û+
·
while_body_1736412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0: E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0: J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource: C
5while_simple_rnn_cell_biasadd_readvariableop_resource: H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢,while/simple_rnn_cell/BiasAdd/ReadVariableOp¢+while/simple_rnn_cell/MatMul/ReadVariableOp¢-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¢
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0¿
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0¸
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0¦
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¦
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
while/simple_rnn_cell/ReluReluwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ñ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder(while/simple_rnn_cell/Relu:activations:0*
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
: :éèÒ
while/Identity_4Identity(while/simple_rnn_cell/Relu:activations:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ù

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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
ã

Ý
D__inference_model_1_layer_call_and_return_conditional_losses_1736856
input_2)
gru_forcaster_1_1736844: %
gru_forcaster_1_1736846: )
gru_forcaster_1_1736848:  )
gru_forcaster_1_1736850: %
gru_forcaster_1_1736852:
identity¢'gru_forcaster_1/StatefulPartitionedCallä
'gru_forcaster_1/StatefulPartitionedCallStatefulPartitionedCallinput_2gru_forcaster_1_1736844gru_forcaster_1_1736846gru_forcaster_1_1736848gru_forcaster_1_1736850gru_forcaster_1_1736852*
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
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736503
IdentityIdentity0gru_forcaster_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
NoOpNoOp(^gru_forcaster_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2R
'gru_forcaster_1/StatefulPartitionedCall'gru_forcaster_1/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
ª`
Ú
D__inference_model_1_layer_call_and_return_conditional_losses_1737021

inputs[
Igru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource: X
Jgru_forcaster_1_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource: ]
Kgru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:  H
6gru_forcaster_1_dense_1_matmul_readvariableop_resource: E
7gru_forcaster_1_dense_1_biasadd_readvariableop_resource:
identity¢.gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp¢-gru_forcaster_1/dense_1/MatMul/ReadVariableOp¢Agru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp¢@gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp¢Bgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp¢ gru_forcaster_1/simple_rnn/whileV
 gru_forcaster_1/simple_rnn/ShapeShapeinputs*
T0*
_output_shapes
:x
.gru_forcaster_1/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0gru_forcaster_1/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0gru_forcaster_1/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(gru_forcaster_1/simple_rnn/strided_sliceStridedSlice)gru_forcaster_1/simple_rnn/Shape:output:07gru_forcaster_1/simple_rnn/strided_slice/stack:output:09gru_forcaster_1/simple_rnn/strided_slice/stack_1:output:09gru_forcaster_1/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)gru_forcaster_1/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : Ä
'gru_forcaster_1/simple_rnn/zeros/packedPack1gru_forcaster_1/simple_rnn/strided_slice:output:02gru_forcaster_1/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:k
&gru_forcaster_1/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
 gru_forcaster_1/simple_rnn/zerosFill0gru_forcaster_1/simple_rnn/zeros/packed:output:0/gru_forcaster_1/simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
)gru_forcaster_1/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
$gru_forcaster_1/simple_rnn/transpose	Transposeinputs2gru_forcaster_1/simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
"gru_forcaster_1/simple_rnn/Shape_1Shape(gru_forcaster_1/simple_rnn/transpose:y:0*
T0*
_output_shapes
:z
0gru_forcaster_1/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2gru_forcaster_1/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2gru_forcaster_1/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*gru_forcaster_1/simple_rnn/strided_slice_1StridedSlice+gru_forcaster_1/simple_rnn/Shape_1:output:09gru_forcaster_1/simple_rnn/strided_slice_1/stack:output:0;gru_forcaster_1/simple_rnn/strided_slice_1/stack_1:output:0;gru_forcaster_1/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
6gru_forcaster_1/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
(gru_forcaster_1/simple_rnn/TensorArrayV2TensorListReserve?gru_forcaster_1/simple_rnn/TensorArrayV2/element_shape:output:03gru_forcaster_1/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¡
Pgru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ±
Bgru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(gru_forcaster_1/simple_rnn/transpose:y:0Ygru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒz
0gru_forcaster_1/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2gru_forcaster_1/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2gru_forcaster_1/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
*gru_forcaster_1/simple_rnn/strided_slice_2StridedSlice(gru_forcaster_1/simple_rnn/transpose:y:09gru_forcaster_1/simple_rnn/strided_slice_2/stack:output:0;gru_forcaster_1/simple_rnn/strided_slice_2/stack_1:output:0;gru_forcaster_1/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÊ
@gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpIgru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ì
1gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMulMatMul3gru_forcaster_1/simple_rnn/strided_slice_2:output:0Hgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ È
Agru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpJgru_forcaster_1_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0÷
2gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAddBiasAdd;gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul:product:0Igru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Î
Bgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpKgru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0æ
3gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1MatMul)gru_forcaster_1/simple_rnn/zeros:output:0Jgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ å
.gru_forcaster_1/simple_rnn/simple_rnn_cell/addAddV2;gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd:output:0=gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
/gru_forcaster_1/simple_rnn/simple_rnn_cell/ReluRelu2gru_forcaster_1/simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
8gru_forcaster_1/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
*gru_forcaster_1/simple_rnn/TensorArrayV2_1TensorListReserveAgru_forcaster_1/simple_rnn/TensorArrayV2_1/element_shape:output:03gru_forcaster_1/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒa
gru_forcaster_1/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3gru_forcaster_1/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿo
-gru_forcaster_1/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ³
 gru_forcaster_1/simple_rnn/whileWhile6gru_forcaster_1/simple_rnn/while/loop_counter:output:0<gru_forcaster_1/simple_rnn/while/maximum_iterations:output:0(gru_forcaster_1/simple_rnn/time:output:03gru_forcaster_1/simple_rnn/TensorArrayV2_1:handle:0)gru_forcaster_1/simple_rnn/zeros:output:03gru_forcaster_1/simple_rnn/strided_slice_1:output:0Rgru_forcaster_1/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Igru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceJgru_forcaster_1_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceKgru_forcaster_1_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
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
_stateful_parallelism( *9
body1R/
-gru_forcaster_1_simple_rnn_while_body_1736949*9
cond1R/
-gru_forcaster_1_simple_rnn_while_cond_1736948*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
Kgru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
=gru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack)gru_forcaster_1/simple_rnn/while:output:3Tgru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
0gru_forcaster_1/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2gru_forcaster_1/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2gru_forcaster_1/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
*gru_forcaster_1/simple_rnn/strided_slice_3StridedSliceFgru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:09gru_forcaster_1/simple_rnn/strided_slice_3/stack:output:0;gru_forcaster_1/simple_rnn/strided_slice_3/stack_1:output:0;gru_forcaster_1/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
+gru_forcaster_1/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ç
&gru_forcaster_1/simple_rnn/transpose_1	TransposeFgru_forcaster_1/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:04gru_forcaster_1/simple_rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¤
-gru_forcaster_1/dense_1/MatMul/ReadVariableOpReadVariableOp6gru_forcaster_1_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Æ
gru_forcaster_1/dense_1/MatMulMatMul3gru_forcaster_1/simple_rnn/strided_slice_3:output:05gru_forcaster_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.gru_forcaster_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp7gru_forcaster_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
gru_forcaster_1/dense_1/BiasAddBiasAdd(gru_forcaster_1/dense_1/MatMul:product:06gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(gru_forcaster_1/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp/^gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp.^gru_forcaster_1/dense_1/MatMul/ReadVariableOpB^gru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpA^gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpC^gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp!^gru_forcaster_1/simple_rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp.gru_forcaster_1/dense_1/BiasAdd/ReadVariableOp2^
-gru_forcaster_1/dense_1/MatMul/ReadVariableOp-gru_forcaster_1/dense_1/MatMul/ReadVariableOp2
Agru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpAgru_forcaster_1/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2
@gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp@gru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2
Bgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpBgru_forcaster_1/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2D
 gru_forcaster_1/simple_rnn/while gru_forcaster_1/simple_rnn/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ã
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736733
input_1$
simple_rnn_1736720:  
simple_rnn_1736722: $
simple_rnn_1736724:  !
dense_1_1736727: 
dense_1_1736729:
identity¢dense_1/StatefulPartitionedCall¢"simple_rnn/StatefulPartitionedCall
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallinput_1simple_rnn_1736720simple_rnn_1736722simple_rnn_1736724*
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
GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736478
dense_1/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0dense_1_1736727dense_1_1736729*
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
D__inference_dense_1_layer_call_and_return_conditional_losses_1736496w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_1/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1

È
5model_1_gru_forcaster_1_simple_rnn_while_cond_1735999b
^model_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_while_loop_counterh
dmodel_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_while_maximum_iterations8
4model_1_gru_forcaster_1_simple_rnn_while_placeholder:
6model_1_gru_forcaster_1_simple_rnn_while_placeholder_1:
6model_1_gru_forcaster_1_simple_rnn_while_placeholder_2d
`model_1_gru_forcaster_1_simple_rnn_while_less_model_1_gru_forcaster_1_simple_rnn_strided_slice_1{
wmodel_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_while_cond_1735999___redundant_placeholder0{
wmodel_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_while_cond_1735999___redundant_placeholder1{
wmodel_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_while_cond_1735999___redundant_placeholder2{
wmodel_1_gru_forcaster_1_simple_rnn_while_model_1_gru_forcaster_1_simple_rnn_while_cond_1735999___redundant_placeholder35
1model_1_gru_forcaster_1_simple_rnn_while_identity
î
-model_1/gru_forcaster_1/simple_rnn/while/LessLess4model_1_gru_forcaster_1_simple_rnn_while_placeholder`model_1_gru_forcaster_1_simple_rnn_while_less_model_1_gru_forcaster_1_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 
1model_1/gru_forcaster_1/simple_rnn/while/IdentityIdentity1model_1/gru_forcaster_1/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "o
1model_1_gru_forcaster_1_simple_rnn_while_identity:model_1/gru_forcaster_1/simple_rnn/while/Identity:output:0*(
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
=
°
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737562
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource: =
/simple_rnn_cell_biasadd_readvariableop_resource: B
0simple_rnn_cell_matmul_1_readvariableop_resource:  
identity¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¦
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
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
value	B : Ô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
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
while_body_1737496*
condR
while_cond_1737495*8
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
à<
®
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737886

inputs@
.simple_rnn_cell_matmul_readvariableop_resource: =
/simple_rnn_cell_biasadd_readvariableop_resource: B
0simple_rnn_cell_matmul_1_readvariableop_resource:  
identity¢&simple_rnn_cell/BiasAdd/ReadVariableOp¢%simple_rnn_cell/MatMul/ReadVariableOp¢'simple_rnn_cell/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¦
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
simple_rnn_cell/ReluRelusimple_rnn_cell/add:z:0*
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
value	B : Ô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
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
while_body_1737820*
condR
while_cond_1737819*8
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
:ÿÿÿÿÿÿÿÿÿ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ É
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï 
Ê
while_body_1736292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_1736314_0: -
while_simple_rnn_cell_1736316_0: 1
while_simple_rnn_cell_1736318_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_1736314: +
while_simple_rnn_cell_1736316: /
while_simple_rnn_cell_1736318:  ¢-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_1736314_0while_simple_rnn_cell_1736316_0while_simple_rnn_cell_1736318_0*
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
GPU2*0J 8 *U
fPRN
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1736240ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
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
: :éèÒ
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_1736314while_simple_rnn_cell_1736314_0"@
while_simple_rnn_cell_1736316while_simple_rnn_cell_1736316_0"@
while_simple_rnn_cell_1736318while_simple_rnn_cell_1736318_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 
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



simple_rnn_while_cond_17373372
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1K
Gsimple_rnn_while_simple_rnn_while_cond_1737337___redundant_placeholder0K
Gsimple_rnn_while_simple_rnn_while_cond_1737337___redundant_placeholder1K
Gsimple_rnn_while_simple_rnn_while_cond_1737337___redundant_placeholder2K
Gsimple_rnn_while_simple_rnn_while_cond_1737337___redundant_placeholder3
simple_rnn_while_identity

simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
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
ÿ
¶
,__inference_simple_rnn_layer_call_fn_1737454

inputs
unknown: 
	unknown_0: 
	unknown_1:  
identity¢StatefulPartitionedCallì
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
GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1736647o
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
à

Ü
D__inference_model_1_layer_call_and_return_conditional_losses_1736813

inputs)
gru_forcaster_1_1736801: %
gru_forcaster_1_1736803: )
gru_forcaster_1_1736805:  )
gru_forcaster_1_1736807: %
gru_forcaster_1_1736809:
identity¢'gru_forcaster_1/StatefulPartitionedCallã
'gru_forcaster_1/StatefulPartitionedCallStatefulPartitionedCallinputsgru_forcaster_1_1736801gru_forcaster_1_1736803gru_forcaster_1_1736805gru_forcaster_1_1736807gru_forcaster_1_1736809*
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
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736689
IdentityIdentity0gru_forcaster_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
NoOpNoOp(^gru_forcaster_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2R
'gru_forcaster_1/StatefulPartitionedCall'gru_forcaster_1/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
E
å
-gru_forcaster_1_simple_rnn_while_body_1737063R
Ngru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_loop_counterX
Tgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_maximum_iterations0
,gru_forcaster_1_simple_rnn_while_placeholder2
.gru_forcaster_1_simple_rnn_while_placeholder_12
.gru_forcaster_1_simple_rnn_while_placeholder_2Q
Mgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_strided_slice_1_0
gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0c
Qgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0: `
Rgru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0: e
Sgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:  -
)gru_forcaster_1_simple_rnn_while_identity/
+gru_forcaster_1_simple_rnn_while_identity_1/
+gru_forcaster_1_simple_rnn_while_identity_2/
+gru_forcaster_1_simple_rnn_while_identity_3/
+gru_forcaster_1_simple_rnn_while_identity_4O
Kgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_strided_slice_1
gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensora
Ogru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource: ^
Pgru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource: c
Qgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:  ¢Ggru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp¢Fgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp¢Hgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp£
Rgru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ®
Dgru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemgru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0,gru_forcaster_1_simple_rnn_while_placeholder[gru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ø
Fgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpQgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0
7gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMulMatMulKgru_forcaster_1/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Ngru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ö
Ggru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpRgru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
8gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAddBiasAddAgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul:product:0Ogru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ü
Hgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpSgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0÷
9gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul.gru_forcaster_1_simple_rnn_while_placeholder_2Pgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ÷
4gru_forcaster_1/simple_rnn/while/simple_rnn_cell/addAddV2Agru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0Cgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ©
5gru_forcaster_1/simple_rnn/while/simple_rnn_cell/ReluRelu8gru_forcaster_1/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ½
Egru_forcaster_1/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.gru_forcaster_1_simple_rnn_while_placeholder_1,gru_forcaster_1_simple_rnn_while_placeholderCgru_forcaster_1/simple_rnn/while/simple_rnn_cell/Relu:activations:0*
_output_shapes
: *
element_dtype0:éèÒh
&gru_forcaster_1/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :­
$gru_forcaster_1/simple_rnn/while/addAddV2,gru_forcaster_1_simple_rnn_while_placeholder/gru_forcaster_1/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: j
(gru_forcaster_1/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ó
&gru_forcaster_1/simple_rnn/while/add_1AddV2Ngru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_loop_counter1gru_forcaster_1/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: ª
)gru_forcaster_1/simple_rnn/while/IdentityIdentity*gru_forcaster_1/simple_rnn/while/add_1:z:0&^gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: Ö
+gru_forcaster_1/simple_rnn/while/Identity_1IdentityTgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_while_maximum_iterations&^gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: ª
+gru_forcaster_1/simple_rnn/while/Identity_2Identity(gru_forcaster_1/simple_rnn/while/add:z:0&^gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: ê
+gru_forcaster_1/simple_rnn/while/Identity_3IdentityUgru_forcaster_1/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^gru_forcaster_1/simple_rnn/while/NoOp*
T0*
_output_shapes
: :éèÒÖ
+gru_forcaster_1/simple_rnn/while/Identity_4IdentityCgru_forcaster_1/simple_rnn/while/simple_rnn_cell/Relu:activations:0&^gru_forcaster_1/simple_rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Å
%gru_forcaster_1/simple_rnn/while/NoOpNoOpH^gru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpG^gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpI^gru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Kgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_strided_slice_1Mgru_forcaster_1_simple_rnn_while_gru_forcaster_1_simple_rnn_strided_slice_1_0"_
)gru_forcaster_1_simple_rnn_while_identity2gru_forcaster_1/simple_rnn/while/Identity:output:0"c
+gru_forcaster_1_simple_rnn_while_identity_14gru_forcaster_1/simple_rnn/while/Identity_1:output:0"c
+gru_forcaster_1_simple_rnn_while_identity_24gru_forcaster_1/simple_rnn/while/Identity_2:output:0"c
+gru_forcaster_1_simple_rnn_while_identity_34gru_forcaster_1/simple_rnn/while/Identity_3:output:0"c
+gru_forcaster_1_simple_rnn_while_identity_44gru_forcaster_1/simple_rnn/while/Identity_4:output:0"¦
Pgru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceRgru_forcaster_1_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"¨
Qgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceSgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"¤
Ogru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceQgru_forcaster_1_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"
gru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensorgru_forcaster_1_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_gru_forcaster_1_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ : : : : : 2
Ggru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpGgru_forcaster_1/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Fgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpFgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2
Hgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpHgru_forcaster_1/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 
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
while_cond_1736132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1736132___redundant_placeholder05
1while_while_cond_1736132___redundant_placeholder15
1while_while_cond_1736132___redundant_placeholder25
1while_while_cond_1736132___redundant_placeholder3
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
:"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¶
serving_default¢
?
input_24
serving_default_input_2:0ÿÿÿÿÿÿÿÿÿC
gru_forcaster_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ê}
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
learning_ratemYmZm[m\m]v^v_v`vavb"
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
)__inference_model_1_layer_call_fn_1736781
)__inference_model_1_layer_call_fn_1736892
)__inference_model_1_layer_call_fn_1736907
)__inference_model_1_layer_call_fn_1736841À
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
D__inference_model_1_layer_call_and_return_conditional_losses_1737021
D__inference_model_1_layer_call_and_return_conditional_losses_1737135
D__inference_model_1_layer_call_and_return_conditional_losses_1736856
D__inference_model_1_layer_call_and_return_conditional_losses_1736871À
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
"__inference__wrapped_model_1736072input_2"
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
Ã
$cell
%
state_spec
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
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
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
1__inference_gru_forcaster_1_layer_call_fn_1736516
1__inference_gru_forcaster_1_layer_call_fn_1737167
1__inference_gru_forcaster_1_layer_call_fn_1737182
1__inference_gru_forcaster_1_layer_call_fn_1736717³
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
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1737296
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1737410
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736733
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736749³
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
C:A 21gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel
M:K  2;gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel
=:; 2/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias
0:. 2gru_forcaster_1/dense_1/kernel
*:(2gru_forcaster_1/dense_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÌBÉ
%__inference_signature_wrapper_1737152input_2"
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
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=_random_generator
>__call__
*?&call_and_return_all_conditional_losses"
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

@states
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
2
,__inference_simple_rnn_layer_call_fn_1737421
,__inference_simple_rnn_layer_call_fn_1737432
,__inference_simple_rnn_layer_call_fn_1737443
,__inference_simple_rnn_layer_call_fn_1737454Õ
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
ÿ2ü
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737562
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737670
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737778
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737886Õ
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
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_1_layer_call_fn_1737895¢
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
D__inference_dense_1_layer_call_and_return_conditional_losses_1737905¢
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
	Ktotal
	Lcount
M	variables
N	keras_api"
_tf_keras_metric
^
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api"
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
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
9	variables
:trainable_variables
;regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ª2§
1__inference_simple_rnn_cell_layer_call_fn_1737919
1__inference_simple_rnn_cell_layer_call_fn_1737933¾
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
à2Ý
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1737950
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1737967¾
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
K0
L1"
trackable_list_wrapper
-
M	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
O0
P1"
trackable_list_wrapper
-
R	variables"
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
H:F 28Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/m
R:P  2BAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/m
B:@ 26Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/m
5:3 2%Adam/gru_forcaster_1/dense_1/kernel/m
/:-2#Adam/gru_forcaster_1/dense_1/bias/m
H:F 28Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/kernel/v
R:P  2BAdam/gru_forcaster_1/simple_rnn/simple_rnn_cell/recurrent_kernel/v
B:@ 26Adam/gru_forcaster_1/simple_rnn/simple_rnn_cell/bias/v
5:3 2%Adam/gru_forcaster_1/dense_1/kernel/v
/:-2#Adam/gru_forcaster_1/dense_1/bias/v§
"__inference__wrapped_model_17360724¢1
*¢'
%"
input_2ÿÿÿÿÿÿÿÿÿ
ª "Aª>
<
gru_forcaster_1)&
gru_forcaster_1ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_1_layer_call_and_return_conditional_losses_1737905\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_1_layer_call_fn_1737895O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ¸
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736733h8¢5
.¢+
%"
input_1ÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1736749h8¢5
.¢+
%"
input_1ÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1737296g7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
L__inference_gru_forcaster_1_layer_call_and_return_conditional_losses_1737410g7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
1__inference_gru_forcaster_1_layer_call_fn_1736516[8¢5
.¢+
%"
input_1ÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
1__inference_gru_forcaster_1_layer_call_fn_1736717[8¢5
.¢+
%"
input_1ÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
1__inference_gru_forcaster_1_layer_call_fn_1737167Z7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
1__inference_gru_forcaster_1_layer_call_fn_1737182Z7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ´
D__inference_model_1_layer_call_and_return_conditional_losses_1736856l<¢9
2¢/
%"
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
D__inference_model_1_layer_call_and_return_conditional_losses_1736871l<¢9
2¢/
%"
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ³
D__inference_model_1_layer_call_and_return_conditional_losses_1737021k;¢8
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
D__inference_model_1_layer_call_and_return_conditional_losses_1737135k;¢8
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
)__inference_model_1_layer_call_fn_1736781_<¢9
2¢/
%"
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_1_layer_call_fn_1736841_<¢9
2¢/
%"
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_1_layer_call_fn_1736892^;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_1_layer_call_fn_1736907^;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
%__inference_signature_wrapper_1737152?¢<
¢ 
5ª2
0
input_2%"
input_2ÿÿÿÿÿÿÿÿÿ"Aª>
<
gru_forcaster_1)&
gru_forcaster_1ÿÿÿÿÿÿÿÿÿ
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1737950·\¢Y
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
 
L__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1737967·\¢Y
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
 ß
1__inference_simple_rnn_cell_layer_call_fn_1737919©\¢Y
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
1/0ÿÿÿÿÿÿÿÿÿ ß
1__inference_simple_rnn_cell_layer_call_fn_1737933©\¢Y
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
1/0ÿÿÿÿÿÿÿÿÿ È
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737562}O¢L
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
 È
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737670}O¢L
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
 ¸
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737778m?¢<
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
 ¸
G__inference_simple_rnn_layer_call_and_return_conditional_losses_1737886m?¢<
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
  
,__inference_simple_rnn_layer_call_fn_1737421pO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ  
,__inference_simple_rnn_layer_call_fn_1737432pO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
,__inference_simple_rnn_layer_call_fn_1737443`?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
,__inference_simple_rnn_layer_call_fn_1737454`?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ 