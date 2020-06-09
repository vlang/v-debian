# How to update changelog
The `debian/changelog` file is not complicated, but sensitive. 

Basic rules:
- Use 24 hour time
- Know your time zone
- DD/MMM/YYYY format
- Do not use full month names
- Update master changelog when needed

## Changelog syntax
There are three sections, which will be called: Header, Body, Footer. Each ones have specific rules:

### HEADER
`vlang (<version>) <release>; urgency=medium` \
The version is the current point release (example: `0.2`). \
The release is the version of the OS it is packaged for (example: `focal`). \
Nothing else needs to be changed.

EX: `vlang (0.2) focal; urgency=medium`

### BODY
`* <changelog>` \
The changelog is the message sent. \
They are to be set two spaces away from the beginning of the line. \
There can be multiple.

EX:
```
  * changed this
  * changed that
  * this too
```

### FOOTER
The footer is the most specific, but is simple to understand. \
`-- your name <email-address>  WW, DD MM YYYY <time> <time-zone>` \
It starts with a space, then your name and email address. \
It then gets two spaces and moves to week day, then the day, month (first three letters), then year. EX: `Mon, 01 Jan 2020` \
After that it is uploaders time and time zone. Time being what time they finished, in 24 hour format, time zone being their timezone reference. I will use MDT. EX: `13:00:00 -0600` \
If you don't know your timezone, feel free to look it up and translate it to proper format.

If you get errors for this, make sure there are two spaces between email and WW. Your email must me kept in angle brackets.

EX: `-- Kai Lyons <kai.lyons@kaix.live>  Mon, 01 Jun 2020 13:00:00 -0600`

# Full Changelog addition
Added at the top of the file, ***do not delete previous changelogs!!***

An example changelog:

```
vlang (<version>) <release>; urgency=medium

  * changed this
  * changed that
  * this too
  
 -- your name <email@example.com>  WW, DD MM YYYY <time> <time-zone>
```

Be sure to change what has been stated above!
