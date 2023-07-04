# timely

timely is a small app to help track time, by creating timers on the fly and controlling when they run. Only one timer runs at a time, helping the user track overall use in hh:mm:ss.

![Title](Screenshots/timely.png)

## Why?

I found this handy for booking time on issues in source control, for example. There are other tools available, such as Clockify (<https://clockify.me/>) but require an API key or don't really track time outside of an issue. So this was a quick prototype to aid my workflow.

## How?

1. Download the zip.
2. Extract it somewhere.
3. Run the application.

Hit 'Start Timer' to create a timer, which begins running immediately. A timer can be stopped by hitting the stop button and then resumed by pressing the resume button.

Timers can be deleted by hitting the 'X' and choosing the appropriate option.

Timers can optionally be _named_ by entering a name in place of the placeholder text.

## TODO

- UI theming. The UI was designed quickly in Freeform and (almost!) mirrors the design exactly.
- Limited to ten timers.
- No persistence.
- An appropriate application framework; this was written in godot.
