// t_debug.h
// 
// Note:	Debug utilities & features.
// 			Generic and not limited to the specific game.
//

#ifndef T_DEBUG
#define T_DEBUG

// -------------------------------------------------------------------------- //

#include <cute.h>
#include <t_utils.h>
using namespace cute;

// -------------------------------------------------------------------------- //

// -- GLOBAlS -- //

//@STUB:	constants, enums, global-vars

enum ECS_SELECT {ALL = 0, ENTITY = 1, COMPONENT = 2, SYSTEM = 3};


// -------------------------------------------------------------------------- //

// -- OBJECTS -- //

//@STUB:	structs, fixed arrays, etc.


// -------------------------------------------------------------------------- //

// -- FUNC SIGS -- //

void echo_array(const array<strint_t>& a);
//
void echo_ecs_list(ECS_SELECT selection);
void echo_ecs_list(strint_t selection);
void echo_ecs_list(const char selection);


// -------------------------------------------------------------------------- //

// -- FUNC DEFINITIONS -- //

// echo_array()
// --> echoes out the string-array
// --> convenience function (for quick debug)
// --> note: create overloads for handling other additional types
void echo_array(const array<string_t>& a)
{
	for (int i = 0; i < a.size(); ++i) {
		printf("%s\n", a[i]);
	}
}

// echo_ecs_list()
// --> echoes out the corresponding E/C/S list (or all 3)
// --> overloaded to take some string inputs as well
// --> rec: use ECS.SELECT enum
void echo_ecs_list(ECS_SELECT selection = ECS_SELECT.ALL)
{
	switch (selection)
	{
		case ECS_SELECT.ENTITY:	echo_array( ecs_get_entity_list(app));
								printf("\n");
								break;
		case ECS_SELECT.ENTITY:	echo_array( ecs_get_component_list(app));
								printf("\n");
								break;
		case ECS_SELECT.ENTITY:	echo_array( ecs_get_system_list(app));
								printf("\n");
								break;
		case ECS_SELECT.ALL:	echo_ecs_list(ECS_SELECT.ENTITY);
								echo_ecs_list(ECS_SELECT.COMPONENT);
								echo_ecs_list(ECS_SELECT.SYSTEM);
								break;
		default:
			printf("Invalid ECS_SELECTION value.\n");	//should never occur
			break;
	}
}
//
void echo_ecs_list(string_t selection)
{
	const char* s = to_upper(selection);
	switch (s)
	{
		case "E":
		case "ENTITY":		echo_ecs_list(ECS_SELECT.ENTITY); break;
		//
		case "C":
		case "COMPONENT":	echo_ecs_list(ECS_SELECT.COMPONENT); break;
		//
		case "S":
		case "SYSTEM":		echo_ecs_list(ECS_SELECT.SYSTEM); break;
		//
		case "ALL":			echo_ecs_list(ECS_SELECT.ALL); break;
		//
		default:
			printf("Invalid argument to echo_ecs_list().\n");
			break;
	}
}
//
void echo_ecs_list(const char selection)
{
	echo_ecs_list(to_string(selection));
}


// -------------------------------------------------------------------------- //

#endif	// T_DEBUG
