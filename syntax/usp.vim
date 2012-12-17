" Vim syntax file
" Language:	Crestron SIMPL+
" Maintainer:	Alex McLain <alex@alexmclain.com>
" Last Change:	2012 Dec 17

if exists("b:current_syntax")
  finish
endif

" Read the C syntax
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" Clear out the unnecessary C highlighting.
hi link cStatement		NONE
hi link cType			NONE
hi link cOperator		NONE
hi link cStructure		NONE
hi link cStorageClass	NONE
hi link cConstant		NONE
hi link cFloat			NONE

" SIMPL+ keywords
syntax case ignore
setlocal iskeyword+=#

syn keyword uspCompilerDirectives	#analog_serial_expand #category #crestron_library #default_nonvolatile #default_volatile #define_constant #digital_expand #enable_dynamic #enable_stack_checking #enable_trace #encoding_ascii #encoding_utf16 #encoding_inherit_from_parent #encoding_inherit_from_program #help #help_begin #help_end #help_pdf_file #hint #if_defined #if_not_defined #endif #if_series2 #if_series3 #large_stack #max_internal_buffer_size #output_shift #print_to_trace #symbol_name #user_library parameter_properties

syn keyword uspCENOEMDefinitions	#analog_input_join #analog_output_join #digital_input_join #digital_output_join #string_input_join #string_output_join

syn keyword uspDeclarations	analog_input analog_output buffer_input digital_input digital_output integer integer_parameter long_integer long_integer_parameter nonvolatile signed_integer signed_integer_parameter signed_long_integer signed_long_integer_parameter string string_input string_output string_parameter structure volatile

syn keyword uspFunctions	function string_function integer_function

syn keyword uspBoolean		true false

syn keyword uspStatements	return case default

syn keyword uspArrays		GetLastModifiedArrayIndex GetNumArrayCols GetNumArrayRows GetNumStructureArrayCols ResizeArray ResizeStructureArray SetArray

syn keyword uspBitByte		bit byte high highWord low LowerChar LowWord RotateLeft RotateLeftLong RotateRight RotateRightLong SetByte UpperChar

syn keyword uspBranching	break cswitch if else switch

syn keyword uspCENOEM		_oem_break _oem_cd _oem_cts _oem_dtr _oem_long_break _oem_max_string _oem_pacing _oem_rts _oem_str_in _oem_str_out

syn keyword uspDataConversion	atoi atol chr HexToI HexToL HexToSI HexToSL itoa itohex ltoa ltohex

syn keyword uspSocketAccess	SocketConnect SocketConnectClient SocketDisconnect SocketDisconnectClient SocketGetAddressAsRequested SocketGetPortNumber SocketGetRemoteIPAddress SocketGetSenderIPAddress SocketGetStatus SocketIsBroadcast SocketIsMulticast SocketReceive SocketSend SocketServerStartListen SocketServerStopListen SocketStatus SocketUDP_Disable SocketUDP_Enable

syn keyword uspEmail		SendMail SendMailAdvance SendMailWithAttachments

syn keyword uspEncoding		ascii GetEncoding SetEncoding Inherit ToASCII ToUTF16 UTF16

syn keyword uspEvents		push change release event socketconnect socketdisconnect socketreceive socketstatus threadsafe

syn keyword uspExceptions	try catch GetExceptionCode GetExceptionMessage

syn keyword uspFiles		file_info FileBOF FileClose FileDelete FileDeleteShared FileEOF FileLength FileOpen FileOpenShared FileRead FileSeek FileWrite FindClose FindFirst FindFirstShared FindNext GetCurrentDirectory IsDirectory IsHidden IsReadOnly IsSystem IsVolume MakeDirectory MakeDirectoryShared ReadInteger ReadIntegerArray ReadLongInteger ReadLongIntegerArray ReadSignedInteger ReadSignedIntegerArray ReadSignedLongInteger ReadSignedLongIntegerArray ReadString ReadStringArray ReadStructure RemoveDirectory RemoveDirectoryShared SetCurrentDirectory StartFileOperations WaitForNewDisk WriteInteger WriteIntegerArray WriteLongInteger WriteLongIntegerArray WriteSignedInteger WriteSignedIntegerArray WriteSignedLongInteger WriteSignedLongIntegerArray WriteString WriteStringArray WriteStructure

syn keyword uspLoops		do until for while to

syn keyword uspMath			abs max min muldiv smax smin

syn keyword uspRamp			CompareRampsByAttribute CompareRampsByID CreateRamp GetRampInfo InitializeRampInfo InitializeRampInfoArray IsRamping ramp_info StopRamp

syn keyword uspRandomNum	random rnd seed

syn keyword uspStrings		makestring print trace ClearBuffer CompareStrings CompareStringsNoCase find FindNoCase gather GatherByLength GetC left len lower mid remove RemoveByLength ResizeString ReverseFind ReverseFindNoCase right SetString upper

syn keyword uspSystemCtrl	delay ProcessLogic pulse TerminateEvent WaitForInitializationComplete

syn keyword uspSystemIntf	GenerateUserError GenerateUserNotice GenerateUserWarning GetCIP GetCrestnet GetModelNumber GetProgramNumber GetSeries GetSlot GetSymbolInstanceName GetSymbolReferenceName IsSignalDefined MakeProgramFilename SendCresnetPacket SendPacketToCPU SetCIP SetCresnet SetSlot

syn keyword uspTimeDate		date day FileDate FileDay FileGetDateNum FileGetDayOfWeekNum FileGetHourNum FileGetMinutesNum FileGetMonthNum FileGetSecondsNum FileGetYearNum FileMonth FileTime GetDateNum GetDayOfWeekNum GetDST GetGMTOffset GetHourNum GetHSeconds GetMinutesNum GetMonthNum GetSecondsNum GetTicks GetYearNum month SetClock SetDate SetGMTOffset time

syn keyword uspWaits		CancelAllWait CancelWait PauseAllWait PauseWait ResumeAllWait ResumeWait RetimeWait wait



" SIMPL+ highlighting
hi def link uspCompilerDirectives		PreProc
hi def link uspCENOEMDefinitions		PreProc
hi def link uspDeclarations				PreProc

hi def link uspBoolean					Type

hi def link uspStatements				Statement
hi def link uspBranching				Statement
hi def link uspLoops					Statement
hi def link uspEvents					Statement
hi def link uspWaits					Statement

hi def link uspFunctions				Function
hi def link uspArrays					Function
hi def link uspBitByte					Function
hi def link uspCENOEM					Function
hi def link uspDataConversion			Function
hi def link uspSocketAccess				Function
hi def link uspEmail					Function
hi def link uspEncoding					Function
hi def link uspExceptions				Function
hi def link uspFiles					Function
hi def link uspMath						Function
hi def link uspRamp						Function
hi def link uspRandomNum				Function
hi def link uspStrings					Function
hi def link uspSystemCtrl				Function
hi def link uspSystemIntf				Function
hi def link uspTimeDate					Function


let b:current_syntax = "usp"

