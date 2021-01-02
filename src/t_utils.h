// t_utils.h
// 
// Note:	General utilities.
// 			Generic and not limited to the specific game.
//

#ifndef T_UTILS
#define T_UTILS

// -------------------------------------------------------------------------- //

#include <cute.h>
using namespace cute;

// -------------------------------------------------------------------------- //

// -- GLOBAlS -- //

//@STUB:	constants, enums, global-vars


// -------------------------------------------------------------------------- //

// -- OBJECTS -- //

//@STUB:	structs, fixed arrays, etc.


// -------------------------------------------------------------------------- //

// -- FUNC SIGS -- //

string_t to_upper(string_t str);
string_t to_lower(string_t str);


// -------------------------------------------------------------------------- //

// -- FUNC DEFINITIONS -- //

// to_upper()
// --> converts string to uppercase
// --> note: string_t omits set-access to [] overload (for optimization)
// --> note: string-mod is best done via array<char> roundtrip conversion
string_t to_upper(string_t str)
{
	array<char> s = to_array(str);
	//
	for (int i = 0; i< str.size(); ++i)
		s[i] = toupper(s[i]);
	//
	return to_string(s);
}

// to_lower()
// --> converts string to lowercase
// --> note: string_t omits set-access to [] overload (for optimization)
// --> note: string-mod is best done via array<char> roundtrip conversion
string_t to_lower(string_t str)
{
	array<char> s = to_array(str);
	//
	for (int i = 0; i< str.size(); ++i)
		s[i] = tolower(s[i]);
	//
	return to_string(s);
}


// -------------------------------------------------------------------------- //

#endif	// T_UTILS
