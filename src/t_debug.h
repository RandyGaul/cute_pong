// t_debug.h
// 
// Note:	Debug utilities & features.
// 			Generic and not limited to the specific game.
//

#ifndef T_DEBUG
#define T_DEBUG

// -------------------------------------------------------------------------- //

#include <cute.h>
#include <t_global.h>
#include <t_utils.h>
using namespace cute;

// -------------------------------------------------------------------------- //

// -- GLOBAlS -- //

//@STUB:	constants, enums, global-vars

extern app_t* app;
//
enum struct ECS_SELECT {ALL = 0, ENTITY = 1, COMPONENT = 2, SYSTEM = 3};


// -------------------------------------------------------------------------- //

// -- OBJECTS -- //

//@STUB:	structs, fixed arrays, etc.


// -------------------------------------------------------------------------- //

// -- FUNC SIGS -- //

template <typename T>
void echo_array(const array<T>& a);
//
void echo_ecs_list(ECS_SELECT selection);
void echo_ecs_list(string_t selection);
void echo_ecs_list(const char selection);


// -------------------------------------------------------------------------- //

// -- FUNC DEFINITIONS -- //

// echo()
// --> echoes out a string based on the input
// --> note: overloaded to handle different types
void echo(const char* x)
{
	printf("%s\n", x);
}
//
void echo(string_t x)
{
	printf("%s\n", x.c_str());
}
//
void echo(int x)
{
	printf("%d\n", x);
}
//
void echo(float x)
{
	printf("%f\n", x);
}

// echo_array()
// --> echoes out the string-array
// --> convenience function (for quick debug)
// --> note: create overloads for handling other additional types
template <typename T>
void echo_array(const array<T>& a)
{
	for (int i = 0; i < a.size(); ++i) {
		echo(a[i]);
	}
}

// echo_ecs_list()
// --> echoes out the corresponding E/C/S list (or all 3)
// --> overloaded to take some string inputs as well
// --> rec: use ECS.SELECT enum
void echo_ecs_list(ECS_SELECT selection = ECS_SELECT::ALL)
{
	switch (selection)
	{
		case ECS_SELECT::ENTITY:	echo_array( ecs_get_entity_list(app));
									printf("\n");
									break;
		case ECS_SELECT::COMPONENT:	echo_array( ecs_get_component_list(app));
									printf("\n");
									break;
		case ECS_SELECT::SYSTEM:	echo_array( ecs_get_system_list(app));
									printf("\n");
									break;
		case ECS_SELECT::ALL:		echo_ecs_list(ECS_SELECT::ENTITY);
									echo_ecs_list(ECS_SELECT::COMPONENT);
									echo_ecs_list(ECS_SELECT::SYSTEM);
									break;
		default:
			printf("Invalid ECS_SELECTION value.\n");	//should never occur
			break;
	}
}
//
void echo_ecs_list(string_t selection)
{
	string_t s = to_upper(selection);
	//
	if ( (s == "E") || (s == "ENTITY") )
		echo_ecs_list(ECS_SELECT::ENTITY);
	else if ( (s == "C") || (s == "COMPONENT") )
		echo_ecs_list(ECS_SELECT::COMPONENT);
	else if ( (s == "S") || (s == "SYSTEM") )
		echo_ecs_list(ECS_SELECT::SYSTEM);
	else if (s == "ALL")
		echo_ecs_list(ECS_SELECT::ALL);
	else
		printf("Invalid argument to echo_ecs_list().\n");
}
//
void echo_ecs_list(const char selection)
{
	echo_ecs_list(to_string(selection));
}


// -------------------------------------------------------------------------- //

#endif	// T_DEBUG
