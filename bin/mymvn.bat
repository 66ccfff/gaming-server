@REM 批量 clean 或 install
@echo off

@REM 准备遍历项目目录
cd ..

@REM 遍历目录并执行指定的 Maven 命令
for /d %%i in (gaming*) do (
	cd %%i
	call mvn %1
	cd ..
)