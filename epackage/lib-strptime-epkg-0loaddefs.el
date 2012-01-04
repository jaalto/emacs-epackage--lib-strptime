
;;;### (autoloads (strptime) "../strptime" "strptime.el" (20210
;;;;;;  30148))
;;; Generated autoloads from strptime.el

(autoload 'strptime "strptime" "\

Return a nine element list of TIME, parsed according to FORMAT.

The elements of the list are of the same form as those returned by
`decode-time' and may be used as aguments to `encode-time'.

When TIME is a buffer instead of a string then text at point in that
buffer is parsed according to FORMAT.

\(SEC MINUTE HOUR DAY MONTH YEAR DOW DST ZONE)

The returned date may be outside the range `encode-time' can handle.

This is a partial implementation of the POSIX `strptime' function.

Optinol argument EXTENDED causes the return value to be extended to
\((SEC MINUTE HOUR DAY MONTH YEAR DOW DST ZONE) BEGIN END))

Where BEGIN and END are the buffer locations indicating the begin and
end of the date/time parsed.  This is useful when TIME is a buffer.

Following directives are supported:

%d
    The day of the month [01,31]; leading zeros are permitted but not
    required.
%D
    The date as %m / %d / %y.
%e
    Equivalent to %d.
%H
    The hour (24-hour clock) [00,23]; leading zeros are permitted but
    not required.
%I
    The hour (12-hour clock) [01,12]; leading zeros are permitted but
    not required.
%m
    The month number [01,12]; leading zeros are permitted but not
    required.
%M
    The minute [00,59]; leading zeros are permitted but not required.
%n
    Any white space.
%p
    The locale's equivalent of a.m or p.m.
%R
    The time as %H : %M.
%S
    The seconds [00,60]; leading zeros are permitted but not required.
%t
    Any white space.
%T
    The time as %H : %M : %S.
%y
    The year within century. When a century is not otherwise
    specified, values in the range [69,99] shall refer to years 1969
    to 1999 inclusive, and values in the range [00,68] shall refer to
    years 2000 to 2068 inclusive; leading zeros shall be permitted but
    shall not be required.

    Note:
        It is expected that in a future version of IEEE Std
        1003.1-2001 the default century inferred from a 2-digit year
        will change. (This would apply to all commands accepting a
        2-digit year as input.)

%Y
    The year, including the century (for example, 1988).
%%
    Replaced by %.

\(fn TIME FORMAT &optional EXTENDED)" t nil)

;;;***
