"?F
DDeviceIDLE"IDLE1?????ƠBA?????ƠBQ      ??Y      ???Unknown
BHostIDLE"IDLE1fffffT?@AfffffT?@al??&??il??&???Unknown
uHostFlushSummaryWriter"FlushSummaryWriter(1???????@9???????@A???????@I???????@a??c\? ??i@;6w7???Unknown?
cHostDataset"Iterator::Root(1?????yZ@9?????yZ@A?????,V@I?????,V@a=	?0D??i?[1???Unknown
yHostMatMul"%gradient_tape/sequential/dense/MatMul(1333333H@9333333H@A333333H@I333333H@a?7 ???iI]O????Unknown
?HostResourceApplyAdam""Adam/Adam/update/ResourceApplyAdam(1?????G@9?????G@A?????G@I?????G@a?Kb@??i8?a8<???Unknown
tHost_FusedMatMul"sequential/dense_1/BiasAdd(1????̌E@9????̌E@A????̌E@I????̌E@a???їb??i:I???????Unknown
pHost_FusedMatMul"sequential/dense/Relu6(1??????A@9??????A@A??????A@I??????A@a8Q ??Ј?iJ??????Unknown
?	HostResourceApplyAdam"$Adam/Adam/update_2/ResourceApplyAdam(1??????@9??????@A??????@I??????@ae?????i???M?p???Unknown
}
HostMatMul")gradient_tape/sequential/dense_1/MatMul_1(1?????L>@9?????L>@A?????L>@I?????L>@a/]?,z\??iB??6????Unknown
oHostSoftmax"sequential/dense_1/Softmax(1??????8@9??????8@A??????8@I??????8@a~P?o?{??i?pP?????Unknown
{HostMatMul"'gradient_tape/sequential/dense_1/MatMul(1fffff?7@9fffff?7@Afffff?7@Ifffff?7@a??AZkـ?i2w?I]O???Unknown
rHostDataset"Iterator::Root::ParallelMapV2(13333331@93333331@A3333331@I3333331@aۮ?o@x?i??)????Unknown
?HostDataset">Iterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate(1?????L3@9?????L3@A      0@I      0@aax?J?v?i?IJ??????Unknown
?HostDataset"4Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat(1fffff?0@9fffff?0@A      .@I      .@a???zU&u?i{'@hI????Unknown
^HostGatherV2"GatherV2(1??????*@9??????*@A??????*@I??????*@aw????r?i?Pv??????Unknown
?Host#SparseSoftmaxCrossEntropyWithLogits"gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits(1333333*@9333333*@A333333*@I333333*@a\?뭄xr?io(?ܻ!???Unknown
?Host	Relu6Grad".gradient_tape/sequential/dense/Relu6/Relu6Grad(1??????)@9??????)@A??????)@I??????)@a??.J;r?i??fS?E???Unknown
iHostWriteSummary"WriteSummary(1333333'@9333333'@A333333'@I333333'@ad:?[p?i???~?f???Unknown?
?HostResourceApplyAdam"$Adam/Adam/update_3/ResourceApplyAdam(1      %@9      %@A      %@I      %@a???E?m?i??"?&????Unknown
?HostResourceApplyAdam"$Adam/Adam/update_1/ResourceApplyAdam(1ffffff#@9ffffff#@Affffff#@Iffffff#@a(?n܉Zk?ig??????Unknown
[HostPow"
Adam/Pow_1(1??????@9??????@A??????@I??????@aF??/Gf?i$?.3ȵ???Unknown
?HostMul"Ugradient_tape/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/mul(1333333@9333333@A333333@I333333@a????,c?iׁ-2?????Unknown
?HostBiasAddGrad"4gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad(1ffffff@9ffffff@Affffff@Iffffff@a?=?:??Y?iv????????Unknown
?HostBiasAddGrad"2gradient_tape/sequential/dense/BiasAdd/BiasAddGrad(1      @9      @A      @I      @am?Q`3aY?iZ?z??????Unknown
?HostSum"1sparse_categorical_crossentropy/weighted_loss/Sum(1      @9      @A      @I      @am?Q`3aY?i>%+0O????Unknown
`HostGatherV2"
GatherV2_1(1??????@9??????@A??????@I??????@a8Q ???X?ig%????Unknown
lHostIteratorGetNext"IteratorGetNext(1333333@9333333@A333333@I333333@aۮ?o@X?i????????Unknown
?HostTile"Bgradient_tape/sparse_categorical_crossentropy/weighted_loss/Tile_1(1??????@9??????@A??????@I??????@a?d]??W?i???ׯ???Unknown
oHostReadVariableOp"Adam/ReadVariableOp(1ffffff@9ffffff@Affffff@Iffffff@a??h?nU?iM??g???Unknown
gHostStridedSlice"strided_slice(1??????@9??????@A??????@I??????@a??t??MT?i?q:??(???Unknown
w HostDataset""Iterator::Root::ParallelMapV2::Zip(1fffff?D@9fffff?D@A333333@I333333@a????,S?iwڹ{$2???Unknown
[!HostAddV2"Adam/add(1ffffff
@9ffffff
@Affffff
@Iffffff
@a?<?$??R?i?L?r;???Unknown
?"HostDataset"NIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice(1ffffff
@9ffffff
@Affffff
@Iffffff
@a?<?$??R?i?Z??D???Unknown
?#HostPack"/sparse_categorical_crossentropy/Reshape_1/shape(1??????	@9??????	@A??????	@I??????	@a??.J;R?ir?6?M???Unknown
Z$HostArgMax"ArgMax(1??????@9??????@A??????@I??????@a~P?o?{Q?i?`;#?V???Unknown
?%HostReadVariableOp")sequential/dense_1/BiasAdd/ReadVariableOp(1ffffff@9ffffff@Affffff@Iffffff@a????g?O?i5?+}j^???Unknown
?&HostStridedSlice"-sparse_categorical_crossentropy/strided_slice(1??????@9??????@A??????@I??????@aP?.?tN?i? /?f???Unknown
Y'HostPow"Adam/Pow(1      @9      @A      @I      @ay??3L?i7Xmm???Unknown
v(HostAssignAddVariableOp"AssignAddVariableOp_2(1333333@9333333@A333333@I333333@a*F?XK?i????s???Unknown
?)HostReadVariableOp"(sequential/dense_1/MatMul/ReadVariableOp(1333333@9333333@A333333@I333333@a*F?XK?iM?ϙ?z???Unknown
e*Host
LogicalAnd"
LogicalAnd(1ffffff@9ffffff@Affffff@Iffffff@a?=?:??I?ig?????Unknown?
v+HostReadVariableOp"Adam/Cast_2/ReadVariableOp(1??????@9??????@A??????@I??????@a8Q ???H?i0?3N????Unknown
X,HostEqual"Equal(1??????@9??????@A??????@I??????@a8Q ???H?iDg?g?????Unknown
~-HostAssignAddVariableOp"Adam/Adam/AssignAddVariableOp(1?????? @9?????? @A?????? @I?????? @a?d]??G?i??Ukn????Unknown
v.HostReadVariableOp"Adam/Cast_3/ReadVariableOp(1       @9       @A       @I       @aax?J?F?i;??=????Unknown
t/HostAssignAddVariableOp"AssignAddVariableOp(1       @9       @A       @I       @aax?J?F?i?d?????Unknown
?0HostReadVariableOp"'sequential/dense/BiasAdd/ReadVariableOp(1       @9       @A       @I       @aax?J?F?iwJ??Y????Unknown
X1HostCast"Cast_2(1ffffff??9ffffff??Affffff??Iffffff??a??h?nE?iZP???????Unknown
?2HostDataset"@Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(1ffffff??9ffffff??Affffff??Iffffff??a??h?nE?i=V&????Unknown
?3HostCast"`sparse_categorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_int64_Cast(1????????9????????A????????I????????a??t??MD?ie3̖$????Unknown
?4HostDivNoNan"3sparse_categorical_crossentropy/weighted_loss/value(1????????9????????A????????I????????a??t??MD?i?y8????Unknown
t5HostReadVariableOp"Adam/Cast/ReadVariableOp(1333333??9333333??A333333??I333333??a????,C?i??8G????Unknown
v6HostAssignAddVariableOp"AssignAddVariableOp_4(1333333??9333333??A333333??I333333??a????,C?igy???????Unknown
?7HostDataset".Iterator::Root::ParallelMapV2::Zip[0]::FlatMap(1      5@9      5@A333333??I333333??a????,C?i?-?ƙ????Unknown
?8HostDivNoNan"Lgradient_tape/sparse_categorical_crossentropy/weighted_loss/value/div_no_nan(1333333??9333333??A333333??I333333??a????,C?iA?we????Unknown
V9HostSum"Sum_2(1????????9????????A????????I????????a??.J;B?i?mJ?????Unknown
v:HostAssignAddVariableOp"AssignAddVariableOp_3(1      ??9      ??A      ??I      ??aHڋ?w?@?i??/?"????Unknown
X;HostCast"Cast_3(1      ??9      ??A      ??I      ??aHڋ?w?@?i?3?]????Unknown
w<HostReadVariableOp"div_no_nan/ReadVariableOp_1(1333333??9333333??A333333??I333333??a*F?X;?i?3?????Unknown
?=HostReadVariableOp"&sequential/dense/MatMul/ReadVariableOp(1333333??9333333??A333333??I333333??a*F?X;?ikQg"????Unknown
X>HostCast"Cast_4(1      ??9      ??A      ??I      ??aax?J?6?i???P?????Unknown
T?HostMul"Mul(1      ??9      ??A      ??I      ??aax?J?6?i	4?9?????Unknown
b@HostDivNoNan"div_no_nan_1(1      ??9      ??A      ??I      ??aax?J?6?iX?#?????Unknown
wAHostReadVariableOp"div_no_nan_1/ReadVariableOp(1      ??9      ??A      ??I      ??aax?J?6?i?b_j????Unknown
?BHostCast"bsparse_categorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_int64_Cast_1(1      ??9      ??A      ??I      ??aax?J?6?i????;????Unknown
?CHostCast"?sparse_categorical_crossentropy/weighted_loss/num_elements/Cast(1      ??9      ??A      ??I      ??aax?J?6?iE???????Unknown
VDHostCast"Cast(1????????9????????A????????I????????a??t??M4?i??<??????Unknown
`EHostDivNoNan"
div_no_nan(1????????9????????A????????I????????a??t??M4?imn?O!????Unknown
]FHostCast"Adam/Cast_1(1????????9????????A????????I????????a??.J;2?iF???b????Unknown
vGHostAssignAddVariableOp"AssignAddVariableOp_1(1????????9????????A????????I????????a??.J;2?i?e^?????Unknown
aHHostIdentity"Identity(1ffffff??9ffffff??Affffff??Iffffff??a????g?/?i=ⴝ????Unknown?
yIHostReadVariableOp"div_no_nan_1/ReadVariableOp_1(1ffffff??9ffffff??Affffff??Iffffff??a????g?/?i[4^?????Unknown
uJHostReadVariableOp"div_no_nan/ReadVariableOp(1      ??9      ??A      ??I      ??aax?J?&?i     ???Unknown*?E
uHostFlushSummaryWriter"FlushSummaryWriter(1???????@9???????@A???????@I???????@a?a	?ia??i?a	?ia???Unknown?
cHostDataset"Iterator::Root(1?????yZ@9?????yZ@A?????,V@I?????,V@a?G???ذ?iڊ'?~|???Unknown
yHostMatMul"%gradient_tape/sequential/dense/MatMul(1333333H@9333333H@A333333H@I333333H@a????~b??i?@ަ????Unknown
?HostResourceApplyAdam""Adam/Adam/update/ResourceApplyAdam(1?????G@9?????G@A?????G@I?????G@a?Η?ւ??i??YLԺ???Unknown
tHost_FusedMatMul"sequential/dense_1/BiasAdd(1????̌E@9????̌E@A????̌E@I????̌E@a?01N_??i??<!?????Unknown
pHost_FusedMatMul"sequential/dense/Relu6(1??????A@9??????A@A??????A@I??????A@a?#?Ͻ??i?e??????Unknown
?HostResourceApplyAdam"$Adam/Adam/update_2/ResourceApplyAdam(1??????@9??????@A??????@I??????@a?r-n???i?.o?S???Unknown
}HostMatMul")gradient_tape/sequential/dense_1/MatMul_1(1?????L>@9?????L>@A?????L>@I?????L>@at?????iA??????Unknown
o	HostSoftmax"sequential/dense_1/Softmax(1??????8@9??????8@A??????8@I??????8@a??b/ג?i"?+H?????Unknown
{
HostMatMul"'gradient_tape/sequential/dense_1/MatMul(1fffff?7@9fffff?7@Afffff?7@Ifffff?7@ac}?p&(??i??{?3???Unknown
rHostDataset"Iterator::Root::ParallelMapV2(13333331@93333331@A3333331@I3333331@a.Ψx9"??iF`?ab????Unknown
?HostDataset">Iterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate(1?????L3@9?????L3@A      0@I      0@a??7?vO??i??b=?????Unknown
?HostDataset"4Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat(1fffff?0@9fffff?0@A      .@I      .@a?T?ʆ?i?Pr;?X???Unknown
^HostGatherV2"GatherV2(1??????*@9??????*@A??????*@I??????*@az??FA5??iE7?@?????Unknown
?Host#SparseSoftmaxCrossEntropyWithLogits"gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits(1333333*@9333333*@A333333*@I333333*@a?0v???i?'Q=????Unknown
?Host	Relu6Grad".gradient_tape/sequential/dense/Relu6/Relu6Grad(1??????)@9??????)@A??????)@I??????)@a??_??r??i??/G???Unknown
iHostWriteSummary"WriteSummary(1333333'@9333333'@A333333'@I333333'@af??	???i?b?;?????Unknown?
?HostResourceApplyAdam"$Adam/Adam/update_3/ResourceApplyAdam(1      %@9      %@A      %@I      %@a-C9L??i???X????Unknown
?HostResourceApplyAdam"$Adam/Adam/update_1/ResourceApplyAdam(1ffffff#@9ffffff#@Affffff#@Iffffff#@a?GMm?y}?i?oϺL???Unknown
[HostPow"
Adam/Pow_1(1??????@9??????@A??????@I??????@a=R?ܫx?iMd?P8???Unknown
?HostMul"Ugradient_tape/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/mul(1333333@9333333@A333333@I333333@a??U???t?i?Z??a???Unknown
?HostBiasAddGrad"4gradient_tape/sequential/dense_1/BiasAdd/BiasAddGrad(1ffffff@9ffffff@Affffff@Iffffff@a?????k?i?)X??}???Unknown
?HostBiasAddGrad"2gradient_tape/sequential/dense/BiasAdd/BiasAddGrad(1      @9      @A      @I      @a?˞?eYk?i??)X?????Unknown
?HostSum"1sparse_categorical_crossentropy/weighted_loss/Sum(1      @9      @A      @I      @a?˞?eYk?iag??K????Unknown
`HostGatherV2"
GatherV2_1(1??????@9??????@A??????@I??????@a?#?Ͻj?i.???	????Unknown
lHostIteratorGetNext"IteratorGetNext(1333333@9333333@A333333@I333333@a.Ψx9"j?i?3?+????Unknown
?HostTile"Bgradient_tape/sparse_categorical_crossentropy/weighted_loss/Tile_1(1??????@9??????@A??????@I??????@aW?-L??i?i?aej????Unknown
oHostReadVariableOp"Adam/ReadVariableOp(1ffffff@9ffffff@Affffff@Iffffff@a??A?Jg?i????????Unknown
gHostStridedSlice"strided_slice(1??????@9??????@A??????@I??????@aK?KA?e?iu?@ӫ/???Unknown
wHostDataset""Iterator::Root::ParallelMapV2::Zip(1fffff?D@9fffff?D@A333333@I333333@a??U???d?iNE)?UD???Unknown
[HostAddV2"Adam/add(1ffffff
@9ffffff
@Affffff
@Iffffff
@a??ڻ[d?i( ? dX???Unknown
? HostDataset"NIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice(1ffffff
@9ffffff
@Affffff
@Iffffff
@a??ڻ[d?i??|rl???Unknown
?!HostPack"/sparse_categorical_crossentropy/Reshape_1/shape(1??????	@9??????	@A??????	@I??????	@a??_??rc?i?Z0B????Unknown
Z"HostArgMax"ArgMax(1??????@9??????@A??????@I??????@a??b/?b?i???q?????Unknown
?#HostReadVariableOp")sequential/dense_1/BiasAdd/ReadVariableOp(1ffffff@9ffffff@Affffff@Iffffff@a??s?la?i??p??????Unknown
?$HostStridedSlice"-sparse_categorical_crossentropy/strided_slice(1??????@9??????@A??????@I??????@a?????h`?iz?!?)????Unknown
Y%HostPow"Adam/Pow(1      @9      @A      @I      @a??Tc^?i]?y_[????Unknown
v&HostAssignAddVariableOp"AssignAddVariableOp_2(1333333@9333333@A333333@I333333@ac?W(,]?iA7?s?????Unknown
?'HostReadVariableOp"(sequential/dense_1/MatMul/ReadVariableOp(1333333@9333333@A333333@I333333@ac?W(,]?i%?Ї?????Unknown
e(Host
LogicalAnd"
LogicalAnd(1ffffff@9ffffff@Affffff@Iffffff@a?????[?i
???????Unknown?
v)HostReadVariableOp"Adam/Cast_2/ReadVariableOp(1??????@9??????@A??????@I??????@a?#?ϽZ?i?]???????Unknown
X*HostEqual"Equal(1??????@9??????@A??????@I??????@a?#?ϽZ?i??t??	???Unknown
~+HostAssignAddVariableOp"Adam/Adam/AssignAddVariableOp(1?????? @9?????? @A?????? @I?????? @aW?-L??Y?i?'???Unknown
v,HostReadVariableOp"Adam/Cast_3/ReadVariableOp(1       @9       @A       @I       @a??7?vOX?i????*"???Unknown
t-HostAssignAddVariableOp"AssignAddVariableOp(1       @9       @A       @I       @a??7?vOX?i?>?R.???Unknown
?.HostReadVariableOp"'sequential/dense/BiasAdd/ReadVariableOp(1       @9       @A       @I       @a??7?vOX?i{ڇYz:???Unknown
X/HostCast"Cast_2(1ffffff??9ffffff??Affffff??Iffffff??a??A?JW?ie??~F???Unknown
?0HostDataset"@Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(1ffffff??9ffffff??Affffff??Iffffff??a??A?JW?iO"??Q???Unknown
?1HostCast"`sparse_categorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_int64_Cast(1????????9????????A????????I????????aK?KA?U?i:?B3?\???Unknown
?2HostDivNoNan"3sparse_categorical_crossentropy/weighted_loss/value(1????????9????????A????????I????????aK?KA?U?i%hc?sg???Unknown
t3HostReadVariableOp"Adam/Cast/ReadVariableOp(1333333??9333333??A333333??I333333??a??U???T?i?W??q???Unknown
v4HostAssignAddVariableOp"AssignAddVariableOp_4(1333333??9333333??A333333??I333333??a??U???T?i??K?|???Unknown
?5HostDataset".Iterator::Root::ParallelMapV2::Zip[0]::FlatMap(1      5@9      5@A333333??I333333??a??U???T?i????r????Unknown
?6HostDivNoNan"Lgradient_tape/sparse_categorical_crossentropy/weighted_loss/value/div_no_nan(1333333??9333333??A333333??I333333??a??U???T?i?4?ǐ???Unknown
V7HostSum"Sum_2(1????????9????????A????????I????????a??_??rS?i????????Unknown
v8HostAssignAddVariableOp"AssignAddVariableOp_3(1      ??9      ??A      ??I      ??a>?i6?;R?i???՞????Unknown
X9HostCast"Cast_3(1      ??9      ??A      ??I      ??a>?i6?;R?i?-2??????Unknown
w:HostReadVariableOp"div_no_nan/ReadVariableOp_1(1333333??9333333??A333333??I333333??ac?W(,M?i??G?????Unknown
?;HostReadVariableOp"&sequential/dense/MatMul/ReadVariableOp(1333333??9333333??A333333??I333333??ac?W(,M?i??]?R????Unknown
X<HostCast"Cast_4(1      ??9      ??A      ??I      ??a??7?vOH?ix??f????Unknown
T=HostMul"Mul(1      ??9      ??A      ??I      ??a??7?vOH?ilQ?qz????Unknown
b>HostDivNoNan"div_no_nan_1(1      ??9      ??A      ??I      ??a??7?vOH?i`?O?????Unknown
w?HostReadVariableOp"div_no_nan_1/ReadVariableOp(1      ??9      ??A      ??I      ??a??7?vOH?iT?P-?????Unknown
?@HostCast"bsparse_categorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_int64_Cast_1(1      ??9      ??A      ??I      ??a??7?vOH?iH??????Unknown
?AHostCast"?sparse_categorical_crossentropy/weighted_loss/num_elements/Cast(1      ??9      ??A      ??I      ??a??7?vOH?i<????????Unknown
VBHostCast"Cast(1????????9????????A????????I????????aK?KA?E?i2?Z0B????Unknown
`CHostDivNoNan"
div_no_nan(1????????9????????A????????I????????aK?KA?E?i(/?w?????Unknown
]DHostCast"Adam/Cast_1(1????????9????????A????????I????????a??_??rC?iO)?????Unknown
vEHostAssignAddVariableOp"AssignAddVariableOp_1(1????????9????????A????????I????????a??_??rC?i߲?s????Unknown
aFHostIdentity"Identity(1ffffff??9ffffff??Affffff??Iffffff??a??s?lA?i<???????Unknown?
yGHostReadVariableOp"div_no_nan_1/ReadVariableOp_1(1ffffff??9ffffff??Affffff??Iffffff??a??s?lA?i?!?????Unknown
uHHostReadVariableOp"div_no_nan/ReadVariableOp(1      ??9      ??A      ??I      ??a??7?vO8?i      ???Unknown2Nvidia GPU (Turing)