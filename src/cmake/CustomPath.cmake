# This file is generally not needed and is included only if libraries are installed in non-standard locations
# Uncomment and set appropriately the following paths

# Set the path to your utils folder
#if (CMAKE_BUILD_TYPE=Debug)
#	set(UTILS_PATH "C:/Users/ilya/Desktop/Robogen/utils_debug")
#elseif (CMAKE_BUILD_TYPE=Release)
#	set(UTILS_PATH "C:/Users/ilya/Desktop/Robogen/utils_release")
#else()
#	set(UTILS_PATH "C:/Users/ilya/Desktop/Robogen/utils_release")
#endif()

####################################################################
# Do not edit under this line
####################################################################

if (UNIX)
if ("${CMAKE_SYSTEM}" MATCHES "Linux")

    # ODE
	set (ODE_INCLUDE_PATH "/usr/local/include")
	set (ODE_LIBRARIES "/usr/local/lib/libode.a")

endif ()
endif (UNIX)

if (APPLE)
    set(UTILS_PATH "/usr/local")

	# ZLIB
	set (ZLIB_ROOT ${UTILS_PATH})

	# PNG
	set (PNG_PNG_INCLUDE_DIR ${UTILS_PATH})
	set (PNG_LIBRARY "${UTILS_PATH}/lib/libpng.a")

	# OSG
	set(ENV{OSG_DIR} ${UTILS_PATH} )

	# Protobuf
	set (PROTOBUF_INCLUDE_DIR "${UTILS_PATH}/include")
	set (PROTOBUF_LIBRARY "${UTILS_PATH}/lib/libprotobuf.a")
	set (PROTOBUF_PROTOC_EXECUTABLE "${UTILS_PATH}/bin/protoc")

	# BOOST
	set (BOOST_ROOT ${UTILS_PATH})
	set (Boost_USE_STATIC_LIBS ON)

	# ODE
	set (ODE_INCLUDE_PATH "${UTILS_PATH}/include")
	set (ODE_LIBRARIES "${UTILS_PATH}/lib/libode.a")

endif()

if (WIN32)

	# ZLIB
	set (ZLIB_ROOT ${UTILS_PATH})

	# PNG
	set (PNG_PNG_INCLUDE_DIR ${UTILS_PATH})
	set (PNG_LIBRARY "${UTILS_PATH}/lib/libpng.lib")

	# OSG
	set(ENV{OSG_DIR} ${UTILS_PATH} )

	# Protobuf
	set (PROTOBUF_INCLUDE_DIR "${UTILS_PATH}/include")
	set (PROTOBUF_LIBRARY "${UTILS_PATH}/lib/libprotobuf.lib")
	set (PROTOBUF_LIBRARY_DEBUG "${UTILS_PATH}/lib/libprotobufd.lib")
	set (PROTOBUF_PROTOC_EXECUTABLE "${UTILS_PATH}/bin/protoc.exe")

	# BOOST
	set (BOOST_ROOT ${UTILS_PATH})
	set (Boost_USE_STATIC_LIBS ON)

	# ODE
	set (ODE_INCLUDE_PATH "${UTILS_PATH}/include")
	set (ODE_LIBRARIES "${UTILS_PATH}/lib/ode_double.lib")

endif()
