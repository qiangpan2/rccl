./install.sh --local_gpu_only -t --prefix rccl_deps/

# 运行 AllReduce 测试
./rccl_deps/test/rccl-UnitTests --gtest_filter='AllReduce.*'
# 运行 Gather 测试
./rccl_deps/test/rccl-UnitTests --gtest_filter='Gather.*'

# 列出所有可用测试
./rccl_deps/test/rccl-UnitTests --gtest_list_tests