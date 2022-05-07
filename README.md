# Khaos
## Source Code
Khaos is an inter-procedural obfuscation prototype based on LLVM 9.0.1. It mainly contains two passes, fission pass and fusion pass, with a seize of analysis passes and util classes. These codes are mainly in Khaos/llvm/lib/Transforms/CodeProt.

InterFunctionShuffleOpt.cpp	Fission pass

InterFunctionFusion.cpp	Fusion pass

HarmnessAnalysis.cpp	Performs analysis for deep fusion

BogusControlFlow.cpp, Flattening.cpp, and Substitution.cpp are obfuscation passes from O-LLVM.

## Build & Prebuild
We suggest using the prebuilt Khaos binaries (tested on ubuntu 20.04) in release folder, using clang and clang++ as front-end. Khaos has a library for fusion named fusion_helper.o, which is also in prebuild path.

Khaos can be rebuilt from source code same as LLVM. We use following command to build Khaos:
```
mkdir build && cd build
cmake -G Ninja -DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi;compiler-rt;lld" -DLLVM_TARGETS_TO_BUILD=X86 /path/to/Khaos/llvm
ninja
```
## Usage
The obfuscation mode is set by command args. There are 5 modes in Khaos and we also integrate 3 obfuscation method in O-LLVM.

Fission
```
/path/to/Khaos/release/clang -flto -fuse-ld=lld -O2 -mllvm -enable-intershuffle-opt -mllvm -ratio=100  -mllvm -inline-splitted-func xxx.c yyy.c zzz.c
```

Fusion
```
/path/to/Khaos/release/clang -flto -fuse-ld=lld -O2 -mllvm -enable-interfusion -mllvm -level-deepfusion=2 -fno-discard-value-names -w /path/to/Khaos/release/fusion_helper.o xxx.c yyy.c zzz.c
```

FuFi.sep
```
/path/to/Khaos/release/clang -flto -fuse-ld=lld -O2 -mllvm -enable-intershuffle-opt -mllvm -ratio=100  -mllvm -inline-splitted-func -mllvm -enable-interfusion -mllvm -level-deepfusion=2 -mllvm -fissioned-function-only -fno-discard-value-names -w /path/to/Khaos/release/fusion_helper.o xxx.c yyy.c zzz.c
```

FuFi.ori
```
/path/to/Khaos/release/clang -flto -fuse-ld=lld -O2 -mllvm -enable-intershuffle-opt -mllvm -ratio=100  -mllvm -inline-splitted-func -mllvm -enable-interfusion -mllvm -level-deepfusion=2 -mllvm -origin-function-only -fno-discard-value-names -w /path/to/Khaos/release/fusion_helper.o xxx.c yyy.c zzz.c
```

FuFi
```
/path/to/Khaos/release/clang -flto -fuse-ld=lld -O2 -mllvm -enable-intershuffle-opt -mllvm -ratio=100  -mllvm -inline-splitted-func -mllvm -enable-interfusion -mllvm -level-deepfusion=2 -fno-discard-value-names -w /path/to/Khaos/release/fusion_helper.o xxx.c yyy.c zzz.c
```

O-LLVM-Sub
```
/path/to/Khaos/release/clang -flto -fuse-ld=lld -O2 -mllvm -enable-codeobf-sub -mllvm -ratio=100 xxx.c yyy.c zzz.c
```

O-LLVM-Bog
```
/path/to/Khaos/release/clang -flto -fuse-ld=lld -O2 -mllvm -enable-codeobf-bog -mllvm -ratio=100 xxx.c yyy.c zzz.c
```

O-LLVM-Fla
```
/path/to/Khaos/release/clang -flto -fuse-ld=lld -O2 -mllvm -enable-codeobf-fla -mllvm -ratio=100 xxx.c yyy.c zzz.c
```
The obfuscated binary can be check with nm/objdump/IDA, we give an example of fission and fusion in the /path/to/Khaos/examples, which contains C file, binary file, and disassemble code.
