# bin

A collection of little scripts that I keep in `~/bin` to make my life easier.

[exit_menu](exit_menu)

I have this bound to a keystroke in my [window manager](https://i3wm.org/) and it asks me whether I'd like to `Exit` my session, enter `Sleep`, `Reboot`, or `Halt` my machine.

[git-redate](git-redate)

You can use this script to change the date of a particular commit in a git repository. I'll make no comment on the useful of this.

Usage: `git redate <commit hash> <new date>`

[nolock](nolock) / [relock](relock)

The `nolock` scripts disables my [screen locker](https://i3wm.org/i3lock/) and any display-related power-saving settings. I use this if I'm going to watch a movie on my laptop.

As you can might guess, `relock` turns all those things back on.

[otp](otp) / [otpmenu](otpmenu)

`otp` is a simple script that calls [totp-cli](https://github.com/WhyNotHugo/totp-cli) and puts the resulting token into my clipboard.

`otpmenu` is a script that I have bound to a keystroke. It launches a menu where I can select the OTP token that I need. `otpmenu` makes use of `otp` so the result ends up in my clipboard. This is very useful while using a web browser.

[tmux](tmux)

This is a simple wrapper for [tmux](https://github.com/tmux/tmux/wiki) that checks to see if I have a running, unattached tmux session and if so, attaches to it. I run this in my `.bashrc` so that every time I open a terminal, it connects to anything I already had running or starts a new session.

[webmenu](webmenu)

This is a very simple wrapper that launches dmenu which prompts me for a URL or a search term and then runs [qutebrowser](https://qutebrowser.org/) on the appropriate page. Handy for quickly popping up some documentation without interrupting my workflow.
