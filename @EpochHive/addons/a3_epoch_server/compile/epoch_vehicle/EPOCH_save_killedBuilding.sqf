private["_aa","_ab","_ac","_ad"];_aa=_this select 0;_ad=_this select 1;if(!isNull _aa)then{_ab=_aa getVariable["BUILD_SLOT",-1];if(_ab !=-1)then{_ac=format["%1:%2",(call EPOCH_fn_InstanceID),_ab];["Building",_ac,[]]call EPOCH_server_hiveSET;EPOCH_BuildingSlots set[_ab,0];EPOCH_BuildingSlotCount={_x==0}count EPOCH_BuildingSlots;publicVariable "EPOCH_BuildingSlotCount";['BuildingKilled',format["%1 was killed by %2 at %3",typeOf _aa,_ad,getPosATL _aa]]call EPOCH_server_hiveLog;};};