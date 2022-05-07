# origin
# CC="/home/patrick/ReleaseCodeProt/bin/clang" python ./tools/build.py --lto=on --compile-flag="-flto -fuse-ld=lld -O2 -Wno-unused-command-line-argument" --strip=off --clean --build-type=Release --builddir=./build/origin
# fission
# CC="/home/patrick/ReleaseCodeProt/bin/clang" python ./tools/build.py --lto=on --compile-flag="-flto -fuse-ld=lld -O2 -mllvm -enable-intershuffle-opt -mllvm -ratio=100  -mllvm -inline-splitted-func -Wno-unused-command-line-argument" --strip=off --clean --build-type=Release --builddir=./build/fission
# fusion
# CC="/home/patrick/ReleaseCodeProt/bin/clang" python ./tools/build.py --lto=on --compile-flag="-flto -fuse-ld=lld /home/patrick/BuildCodeProt/lib/clang/9.0.1/lib/linux/fusion_helper.o -O2 -mllvm -enable-interfusion -mllvm -level-deepfusion=2 -fno-discard-value-names -Wno-unused-command-line-argument" --strip=off --clean --build-type=Release --builddir=./build/fusion
# fufi-fission
# CC="/home/patrick/ReleaseCodeProt/bin/clang" python ./tools/build.py --lto=on --compile-flag="-flto -fuse-ld=lld /home/patrick/BuildCodeProt/lib/clang/9.0.1/lib/linux/fusion_helper.o -O2 -mllvm -enable-intershuffle-opt -mllvm -ratio=100  -mllvm -inline-splitted-func -mllvm -enable-interfusion -mllvm -fissioned-function-only -mllvm -level-deepfusion=2 -fno-discard-value-names -Wno-unused-command-line-argument" --strip=off --clean --build-type=Release --builddir=./build/fufi-fission
# fufi-ori
# CC="/home/patrick/ReleaseCodeProt/bin/clang" python ./tools/build.py --lto=on --compile-flag="-flto -fuse-ld=lld /home/patrick/BuildCodeProt/lib/clang/9.0.1/lib/linux/fusion_helper.o -O2 -mllvm -enable-intershuffle-opt -mllvm -ratio=100  -mllvm -inline-splitted-func -mllvm -enable-interfusion -mllvm -origin-function-only -mllvm -level-deepfusion=2 -fno-discard-value-names -Wno-unused-command-line-argument" --strip=off --clean --build-type=Release --builddir=./build/fufi-ori
# fufi
# CC="/home/patrick/ReleaseCodeProt/bin/clang" python ./tools/build.py --lto=on --compile-flag="-flto -fuse-ld=lld /home/patrick/BuildCodeProt/lib/clang/9.0.1/lib/linux/fusion_helper.o -O2 -mllvm -enable-intershuffle-opt -mllvm -ratio=100  -mllvm -inline-splitted-func -mllvm -enable-interfusion -mllvm -level-deepfusion=2 -fno-discard-value-names -Wno-unused-command-line-argument" --strip=off --clean --build-type=Release --builddir=./build/fufi
# bof
CC="/home/patrick/ReleaseCodeProt/bin/clang" python ./tools/build.py --lto=on --compile-flag="-flto -fuse-ld=lld -O2 -mllvm -enable-codeobf-bog -mllvm -ratio=100 -w -Wno-unused-command-line-argument" --strip=off --clean --build-type=Release --builddir=./build/bog
# fla
CC="/home/patrick/ReleaseCodeProt/bin/clang" python ./tools/build.py --lto=on --compile-flag="-flto -fuse-ld=lld -O2 -mllvm -enable-codeobf-fla -mllvm -ratio=10 -w -Wno-unused-command-line-argument" --strip=off --clean --build-type=Release --builddir=./build/fla
# sub
CC="/home/patrick/ReleaseCodeProt/bin/clang" python ./tools/build.py --lto=on --compile-flag="-flto -fuse-ld=lld -O2 -mllvm -enable-codeobf-sub -mllvm -ratio=100 -w -Wno-unused-command-line-argument" --strip=off --clean --build-type=Release --builddir=./build/sub
