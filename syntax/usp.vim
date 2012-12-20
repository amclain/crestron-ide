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

" Compiler Directives
syn keyword uspPreProc	#analog_serial_expand #category #crestron_library #default_nonvolatile #default_volatile #define_constant #digital_expand #enable_dynamic #enable_stack_checking #enable_trace #encoding_ascii #encoding_utf16 #encoding_inherit_from_parent #encoding_inherit_from_program #help #help_begin #help_end #help_pdf_file #hint #if_defined #if_not_defined #endif #if_series2 #if_series3 #large_stack #max_internal_buffer_size #output_shift #print_to_trace #symbol_name #user_library parameter_properties

" CEN-OEM Definitions
syn keyword uspPreProc	#analog_input_join #analog_output_join #digital_input_join #digital_output_join #string_input_join #string_output_join

" Declarations
syn keyword uspPreProc	analog_input analog_output buffer_input digital_input digital_output integer integer_parameter long_integer long_integer_parameter nonvolatile signed_integer signed_integer_parameter signed_long_integer signed_long_integer_parameter string string_input string_output string_parameter structure volatile _skip_

" Function Declarations
syn keyword uspFunction		function string_function integer_function

" Boolean Types
syn keyword uspType			true false

syn keyword uspStatement	return case default

" Exceptions
syn keyword uspStatement	try catch GetExceptionCode GetExceptionMessage

" Conditionals
syn keyword uspConditional	break cswitch if else switch

syn keyword uspConditional	do until for while to

" Events
syn keyword uspStatement	push change release event socketconnect socketdisconnect socketreceive socketstatus threadsafe

" Array Functions
syn keyword uspFunction		GetLastModifiedArrayIndex GetNumArrayCols GetNumArrayRows GetNumStructureArrayCols ResizeArray ResizeStructureArray SetArray

" Bit/Byte Functions
syn keyword uspBitByte		bit byte high highWord low LowerChar LowWord RotateLeft RotateLeftLong RotateRight RotateRightLong SetByte UpperChar

" CEN-OEM Functions
syn keyword uspFunction		_oem_break _oem_cd _oem_cts _oem_dtr _oem_long_break _oem_max_string _oem_pacing _oem_rts _oem_str_in _oem_str_out

" Data Conversion Functions
syn keyword uspFunction		atoi atol chr HexToI HexToL HexToSI HexToSL itoa itohex ltoa ltohex

" Socket Access Functions
syn keyword uspFunction		SocketConnect SocketConnectClient SocketDisconnect SocketDisconnectClient SocketGetAddressAsRequested SocketGetPortNumber SocketGetRemoteIPAddress SocketGetSenderIPAddress SocketGetStatus SocketIsBroadcast SocketIsMulticast SocketReceive SocketSend SocketServerStartListen SocketServerStopListen SocketStatus SocketUDP_Disable SocketUDP_Enable

" Email Functions
syn keyword uspFunction		SendMail SendMailAdvance SendMailWithAttachments

" Encoding Functions
syn keyword uspFunction		ascii GetEncoding SetEncoding Inherit ToASCII ToUTF16 UTF16

" File Functions
syn keyword uspFunction		file_info FileBOF FileClose FileDelete FileDeleteShared FileEOF FileLength FileOpen FileOpenShared FileRead FileSeek FileWrite FindClose FindFirst FindFirstShared FindNext GetCurrentDirectory IsDirectory IsHidden IsReadOnly IsSystem IsVolume MakeDirectory MakeDirectoryShared ReadInteger ReadIntegerArray ReadLongInteger ReadLongIntegerArray ReadSignedInteger ReadSignedIntegerArray ReadSignedLongInteger ReadSignedLongIntegerArray ReadString ReadStringArray ReadStructure RemoveDirectory RemoveDirectoryShared SetCurrentDirectory StartFileOperations WaitForNewDisk WriteInteger WriteIntegerArray WriteLongInteger WriteLongIntegerArray WriteSignedInteger WriteSignedIntegerArray WriteSignedLongInteger WriteSignedLongIntegerArray WriteString WriteStringArray WriteStructure

" Math Functions
syn keyword uspFunction		abs max min muldiv smax smin

" Ramp Functions
syn keyword uspFunction		CompareRampsByAttribute CompareRampsByID CreateRamp GetRampInfo InitializeRampInfo InitializeRampInfoArray IsRamping ramp_info StopRamp

" Random Number Functions
syn keyword uspFunction		random rnd seed

" String Functions
syn keyword uspFunction		makestring print trace ClearBuffer CompareStrings CompareStringsNoCase find FindNoCase gather GatherByLength GetC left len lower mid remove RemoveByLength ResizeString ReverseFind ReverseFindNoCase right SetString upper

" System Control Functions
syn keyword uspFunction		delay ProcessLogic pulse TerminateEvent WaitForInitializationComplete

" System Initialization Functions
syn keyword uspFunction		GenerateUserError GenerateUserNotice GenerateUserWarning GetCIP GetCrestnet GetModelNumber GetProgramNumber GetSeries GetSlot GetSymbolInstanceName GetSymbolReferenceName IsSignalDefined MakeProgramFilename SendCresnetPacket SendPacketToCPU SetCIP SetCresnet SetSlot

" Time/Date Functions
syn keyword uspFunction		date day FileDate FileDay FileGetDateNum FileGetDayOfWeekNum FileGetHourNum FileGetMinutesNum FileGetMonthNum FileGetSecondsNum FileGetYearNum FileMonth FileTime GetDateNum GetDayOfWeekNum GetDST GetGMTOffset GetHourNum GetHSeconds GetMinutesNum GetMonthNum GetSecondsNum GetTicks GetYearNum month SetClock SetDate SetGMTOffset time

" Wait Functions
syn keyword uspFunction		CancelAllWait CancelWait PauseAllWait PauseWait ResumeAllWait ResumeWait RetimeWait wait


" SIMPL+ highlighting
hi def link uspPreProc					PreProc
hi def link uspType						Type
hi def link uspStatement				Statement
hi def link uspConditional				Conditional
hi def link uspFunction					Function


let b:current_syntax = "usp"

