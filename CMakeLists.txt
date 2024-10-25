

project(
	kolibrios-Tester
)

find_package(qemu-system-i386)

add_subdirectory(KolibriOS-Cpp-Lib)

add_subdirectory(tester)
