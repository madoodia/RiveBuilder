@REM SPDX-FileCopyrightText: 2023 Jeremias Bosch <jeremias.bosch@basyskom.com>
@REM SPDX-FileCopyrightText: 2023 Jonas Kalinka <jonas.kalinka@basyskom.com>
@REM SPDX-FileCopyrightText: 2023 basysKom GmbH
@REM SPDX-FileCopyrightText: 2023 Reza Aarabi <madoodia@gmail.com>

@REM SPDX-License-Identifier: LGPL-3.0-or-later
@REM --------------------------------------------------------------------------

set ROOT=%~dp0
set ROOT=%ROOT:\=/%


@REM  VCVARS_LOCATION: C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build
echo  %VCVARS_LOCATION%
@REM Visual Studio 2019 Compiler
call "%VCVARS_LOCATION%/vcvarsall.bat" x64 -vcvars_ver=14.29.30133
@REM Visual Studio 2022 Compiler
@REM call "%VCVARS_LOCATION%/vcvarsall.bat" x64 -vcvars_ver=14.36.32532



cd %ROOT%

if not exist "build" ( 
    mkdir "build"
)


REM Qt5_DIR
set Qt5_DIR=%SDKS_LOCATION%/Qt5/lib/cmake
set PATH=%PATH%;%SDKS_LOCATION%/Qt5/bin

@REM REM Qt6_DIR
@REM set Qt6_DIR=%SDKS_LOCATION%/Qt6/lib/cmake
@REM set PATH=%PATH%;%SDKS_LOCATION%/Qt6/bin

cd "%ROOT%/build"

@REM cmake -G "Visual Studio 16 2019" -A x64 -DCMAKE_PREFIX_PATH=%Qt6_DIR%  -DCMAKE_CXX_FLAGS="/bigobj" "%ROOT%"
cmake -G "NMake Makefiles" -DCMAKE_PREFIX_PATH=%Qt6_DIR%  -DCMAKE_CXX_FLAGS="/bigobj" "%ROOT%"
@REM cmake --build . --config Debug
cmake --build . --config Release
