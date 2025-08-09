#!/usr/bin/env tclsh8.6
#
# This Tcl script is read by binary `re2c` in the same directory.
#
# Run:
#
# $ ./re2c
#
package require Tk 8.6

# Tk window settings.
set title "Réaumur to Celsius"
set font  "Helvetica 12"
set theme "classic"

# Temperature values.
global output

set input  "0.0" ;# Default input value.
set output ""    ;# Default output value.

# Set theme (optional), one of: clam, alt, default, classic.
ttk::style theme use $theme

# Set font to use for all widgets.
option add *font $font

# Set window title.
wm title . $title

# Create grid for our widgets.
grid [ttk::frame .frame -padding "10 10 20 20"] -column 0 -row 0 -sticky nwes
grid columnconfigure . 0 -weight 1
grid rowconfigure    . 0 -weight 1

# Add widgets.
grid [ttk::label  .frame.text   -text "Enter value in °Ré:"]        -column 1 -row 1 -columnspan 5 -sticky we
grid [ttk::entry  .frame.input  -textvariable input -width 7]       -column 1 -row 2 -sticky we
grid [ttk::label  .frame.deg_re -text "°Ré"]                        -column 2 -row 2 -sticky we
grid [ttk::button .frame.button -command [list callback] -text ">"] -column 3 -row 2 -sticky w
grid [ttk::entry  .frame.output -textvariable output -width 7]      -column 4 -row 2 -sticky we
grid [ttk::label  .frame.deg_c  -text "°C"]                         -column 5 -row 2 -sticky we

# Set padding of widgets.
foreach w [winfo children .frame] {
    grid configure $w -padx 0 -pady 5
}

focus .frame.input                 ;# Set initial focus to input widget.
bind . <Return> {[list callback]}  ;# Add key binding.

# Prevent resizing of the window.
update idletasks                   ;# Show window first to get correct size.
set size [wm geometry .]           ;# Get current window size.
regexp {(\d+)x(\d+)} $size all w h ;# Extract width and height.
wm aspect . $w $h $w $h
wm minsize . $w $h
wm maxsize . $w $h

# The callback routine.
proc callback {} {
    global output
    set temp [.frame.input get]
    if {$temp eq ""} return
    set output [re2c $temp]
}
