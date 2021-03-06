/* The following definitions change the keys used to send commands
 * to mtm. In all cases, the value must be something that ncurses's
 * get_wch(3) function could return.
 * The values should be wrapped in * KEY(x) for regular keys
 * (i.e. for those which get_wch(3) would return OK), and CODE(x)
 * for special keys (i.e. those for which get_wch(3) would return
 * KEY_CODE_YES).
 */

/* Old versions of ncurses don't support A_ITALIC.
 * Define this to disable it if the situation isn't automatically detected.
#define NO_ITALICS
 */

/* How often to check for status updates by default. */
#define STATUSINTERVAL 15

/* The default command prefix key, when modified by cntrl.
 * This can be changed at runtime using the '-c' flag.
 */
#define COMMAND_KEY 'a'

/* The change focus keys. */
#define MOVE_UP         KEY(L'k')
#define MOVE_DOWN       KEY(L'j')
#define MOVE_RIGHT      KEY(L'l')
#define MOVE_LEFT       KEY(L'h')

/* The split terminal keys. */
#define HSPLIT KEY(L'=')
#define VSPLIT KEY(L'-')

/* The delete terminal key. */
#define DELETE_NODE KEY(L'w')

/* The force redraw key. */
#define REDRAW KEY(L'l')

/* The path for the wide-character curses library. */
#ifndef NCURSESW_INCLUDE_H
    #if defined(__APPLE__) || (defined(BSD) && !defined(__linux__))
        #define NCURSESW_INCLUDE_H <curses.h>
    #else
        #define NCURSESW_INCLUDE_H <ncursesw/curses.h>
    #endif
#endif
#include NCURSESW_INCLUDE_H

/* Includes needed to make forkpty(3) work. */
#ifndef FORKPTY_INCLUDE_H
    #if defined(__APPLE__) || (defined(BSD) && !defined(__linux__))
        #define FORKPTY_INCLUDE_H <util.h>
    #else
        #define FORKPTY_INCLUDE_H <pty.h>
    #endif
#endif
#include FORKPTY_INCLUDE_H
