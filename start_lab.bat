@echo off
E:
cd \项目\深度学习实验          :: 先切到项目盘 / 目录（按实际路径修改）
call conda activate dl-exp
jupyter lab
pause
