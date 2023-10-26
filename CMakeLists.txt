#[[
SPDX-FileCopyrightText: 2023 Jeremias Bosch <jeremias.bosch@basyskom.com>
SPDX-FileCopyrightText: 2023 Jonas Kalinka <jonas.kalinka@basyskom.com>
SPDX-FileCopyrightText: 2023 basysKom GmbH

SPDX-License-Identifier: LGPL-3.0-or-later
]]

cmake_minimum_required(VERSION 3.16)

project(RiveBuilder
    VERSION 0.1.0.0
    LANGUAGES CXX
)


# Set up Qt configuration and enable C++17
set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if(WIN32)
	set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY $ENV{ROOT}/lib)
	set(CMAKE_LIBRARY_OUTPUT_DIRECTORY $ENV{ROOT}/lib)
	set(CMAKE_RUNTIME_OUTPUT_DIRECTORY $ENV{ROOT}/bin)
endif(WIN32)


add_subdirectory($ENV{ROOT}3rdParty/rive/cmake)


