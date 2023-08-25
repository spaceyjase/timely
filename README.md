# timely

timely is a small app to help track time, by creating timers on the fly and controlling when they run. Only one timer runs at a time, helping the user track overall use in hh:mm:ss.

![Title](Screenshots/timely.png)

## Why?

I found this handy for booking time on issues in source control and while there are other tools available, such as [Clockify](https://clockify.me/) or the excellent time tracking in [gitea](https://about.gitea.com/), I really needed to track time outside of an issue or across domains.

## Install

1. Download the zip/dmg.
2. Extract it somewhere.
	1. linux users should make it executable: `chmod u+x timely.x86_64`
3. Run the application.
	1. some users might want to run in compatible mode: `./timely.x86_64 --rendering-driver opengl3`

The latest (develop) version can always be found [here](https://jasonmichaeladams.com/timely/).

## How?

* Hit 'Start Timer' to create a new timer.
* Timers begin running immediately.
* A timer can be stopped by hitting the stop button and then resumed by pressing the resume button.
* Timers can be deleted by hitting the 'X' and choosing the appropriate option.

* Timers can optionally be _named_ by entering a name in place of the placeholder text.

## TODO

* UI theming. The UI was designed quickly in Freeform and (almost!) mirrors the design exactly.
* Limited to ten timers.
* No persistence.
* An appropriate application framework; this was written in godot.
