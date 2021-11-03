#include "script_component.hpp"

params ["_unit"];
if (_unit == call CBA_fnc_currentUnit) then {
    "youreOnFire" cutText [
        format [
            "<t color='#ff0000' font='PuristaBold' size='2'>%1</t>",
            "I'M BURNING!"
        ], 
        "PLAIN", 
        0.25, 
        true, 
        true
    ];
};
_bodyPart = selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"];
[_x, 0.25, _bodyPart, "stab", _x] call ace_medical_fnc_addDamageToUnit;