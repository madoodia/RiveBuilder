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
@REM call "%VCVARS_LOCATION%/vcvarsall.bat" x64 -vcvars_ver=14.29.30133
@REM Visual Studio 2022 Compiler
call "%VCVARS_LOCATION%/vcvarsall.bat" x64 -vcvars_ver=14.36.32532

cd %ROOT%

if not exist "build" ( 
    mkdir "build"
)

cd "%ROOT%/build"

@REM better to create sln file with setting the /MD in Runtime Lbrary options (through CmakeList.txt) in Visual studio and build it there
cmake -G "Visual Studio 17 2022" -A x64 -DCMAKE_CXX_FLAGS="/bigobj" "%ROOT%"
@REM addin /M as additional option does not work
@REM cmake -G "NMake Makefiles"  -DCMAKE_CXX_FLAGS="/bigobj" "%ROOT%" 
@REM cmake --build . --config Debug
@REM cmake --build . --config Release
