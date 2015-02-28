@echo off
color 0a
mode con cols=90 lines=25
:begin
echo -------------------------工具使用说明------------------------------
echo 使用方法：输入下面标示的一个数字，然后按回车键即可。
echo -------------------------------------------------------------------
echo 输入数字【0】退出本工具  
echo 输入数字【1】打开控制面板
echo 输入数字【2】打开计算器
echo 输入数字【3】打开放大镜
echo 输入数字【4】打开截图
echo 输入数字【5】打开注册表
echo 输入数字【6】打开磁盘管理
echo 输入数字【7】打开系统服务
echo 输入数字【8】查看ip地址
echo 输入数字【9】检查邮箱地址真实性
echo --------------------------------------------------------------------
echo 版本1.0.1 最后更新2015-02-28 如有其它需求请联系：hsuchan@hsuchan.com
echo -------------------------Design by HsuChan--------------------------
set /p var=请输入:
:: rum a special cmd by input number
if  %var% EQU 0 (goto quit)
if  %var% EQU 1 (goto control)
if  %var% EQU 2 (goto calc)
if  %var% EQU 3 (goto magnify)
if  %var% EQU 4 (goto SnippingTool)
if  %var% EQU 5 (goto regedit)
if  %var% EQU 6 (goto diskmgmt)
if  %var% EQU 7 (goto services)
if  %var% EQU 8 (goto ip)
if  %var% EQU 9 (goto hsuchan)
:: choices
:quit
	exit
:control
	start control.exe
	goto end
:calc
	start calc.exe
	goto end
:magnify
	start magnify.exe
	goto end
:SnippingTool
	start SnippingTool.exe
	goto end
:regedit
	start regedit.exe
	goto end
:diskmgmt
	start diskmgmt.msc
	goto end
:services
	start services.msc
	goto end
:ip
   ipconfig
   pause
   goto end
:hsuchan
   start iexplore.exe http://verify-mail.hsuchan.com/
   goto end
:end
	cls
	goto begin
