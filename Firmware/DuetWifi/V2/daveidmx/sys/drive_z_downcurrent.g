;; In order to consolidate motor current and physics settings,
;; and to enable switching between full- and low-current profiles,
;; these motor settings live in this related set of macros.
;;
;; The "downcurrent" files specify slower, gentler values
;; used for some parts of homing.
;; This can help to reduce damage in the case of a crash
;; due to misalignment, misconfiguration,
;; or sensors otherwise not triggering.
;;
;; *ADJUST* all values, or disable as descibed


;; To disable downcurrent Z moves, uncomment these lines.
;M98 P"drive_z_fullcurrent.g"
;M99     ; exit macro without changing anything else


;; Choose either an M913 percentage or an M906 absolute current value.
;M913 Z50        ; set operating current percentage
M906 Z600       ; set absolute motor drive current

;; Set reduced physics parameters to help prevent missed steps.
M203 Z3000      ; maximum speed (mm/min)
M201 Z450       ; maximum acceleration (mm/min/s)
M566 Z0         ; instantaneous speed change (mm/min)
