@echo off
color 0a
mode con cols=90 lines=25
:begin
echo -------------------------����ʹ��˵��------------------------------
echo ʹ�÷��������������ʾ��һ�����֣�Ȼ�󰴻س������ɡ�
echo -------------------------------------------------------------------
echo �������֡�0���˳�������  
echo �������֡�1���򿪿������
echo �������֡�2���򿪼�����
echo �������֡�3���򿪷Ŵ�
echo �������֡�4���򿪽�ͼ
echo �������֡�5����ע���
echo �������֡�6���򿪴��̹���
echo �������֡�7����ϵͳ����
echo --------------------------------------------------------------------
echo �汾1.0.0  2015-02-09  	����������������ϵ��hsuchan@hsuchan.com
echo -------------------------Design by HsuChan--------------------------
set /p var=������:
:: rum a special cmd by input number
if  %var% EQU 0 (goto quit)
if  %var% EQU 1 (goto control)
if  %var% EQU 2 (goto calc)
if  %var% EQU 3 (goto magnify)
if  %var% EQU 4 (goto SnippingTool)
if  %var% EQU 5 (goto regedit)
if  %var% EQU 6 (goto diskmgmt)
if  %var% EQU 7 (goto services)
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
:end
	cls
	goto begin