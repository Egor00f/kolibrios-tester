

project(Tester)


add_kolibri_executable(tester main.cpp)

target_link_libraries(
	tester
	PRIVATE KolibriLib
)