package Kwiki::Icons::Crystal;
use strict;
use warnings;
use Kwiki::Icons '-Base';
our $VERSION = '0.12';

const class_title => 'Crystal SVG-based Icons';
const icons_path => 'icons/crystal/template';

1;

__DATA__

=head1 NAME

Kwiki::Icons::Crystal - Kwiki Crystal Icons plugin
  
=head1 SYNOPSIS

 $ cpan Kwiki::Icons::Crystal
   $ cd /path/to/kwiki
   $ vim plugins
   $ kwiki -update
  
=head1 DESCRIPTION

This is a Kwiki icons package that includes icons from the Crystal SVG KDE icon theme.  

=head1 NOTA BENE

The icons are in RGBA PNG format, which can't currently be displayed properly on IE for
Windows without a shameful hack.  IE will force the images down to binary transparency,
though, and defaults to using a silver background.  I modified all the images to set a
white background.  It looks okay for anyone with a white background, but unfortunately,
it's not a good solution.

=head2 Icons

The following icons are provided:
  
=over 4

=item * edit

=item * favorites

=item * guest_book

=item * home

=item * new_page

=item * plugin_index

=item * recent_changes

=item * revisions (now the same as revisions_previous)

=item * revisions_current

=item * revisions_next

=item * revisions_previous

=item * user_preferences

=item * weather

=back

=head1 AUTHOR

The icons have been packaged by Matt Howard after borrowing work by 
Ian Langworth <langworth.com>.
  
Credits to Brian Ingerson and Jooon for further tweaks.
  
=head1 SEE ALSO

L<Kwiki>, L<Kwiki::Icons>, L<http://www.everaldo.com/>
  
=head1 COPYRIGHT AND LICENSE

Copyright (c) 2004. Ian Langworth. All rights reserved.
  
The Crystal SVG icon set is from the KDE packages.  They are licensed
under the LGPL with an additional section that defines "source code" in
the context of graphics.  For more information, see 
L<http://artist.kde.org/new/license.html>

The code borrowed from Ian's work falls under the General Public License.

See L<http://www.gnu.org/copyleft/gpl.html>
  
=cut

__icons/crystal/template/recent_changes_button_icon.html__
<!-- BEGIN recent_changes_button_icon.html -->
<img src="icons/crystal/image/recent_changes.png" alt="Changes" width="16" height="16" />
<!-- END recent_changes_button_icon.html -->
__icons/crystal/template/edit_button_icon.html__
<!-- BEGIN edit_button_icon.html -->
<img src="icons/crystal/image/edit.png" alt="Edit" width="16" height="16" />
<!-- END edit_button_icon.html -->
__icons/crystal/template/favorites_button_icon.html__
<!-- BEGIN favorites_button_icon.html -->
<img src="icons/crystal/image/favorites.png" alt="Favorites" width="16" height="16" />
<!-- END favorites_button_icon.html -->
__icons/crystal/template/guest_book_button_icon.html__
<!-- BEGIN guest_book_button_icon.html -->
<img src="icons/crystal/image/guest_book.png" alt="Guests" width="16" height="16" />
<!-- END guest_book_button_icon.html -->
__icons/crystal/template/home_button_icon.html__
<!-- BEGIN home_button_icon.html -->
<img src="icons/crystal/image/home.png" alt="Home" width="16" height="16" />
<!-- END home_button_icon.html -->
__icons/crystal/template/new_page_button_icon.html__
<!-- BEGIN new_page_button_icon.html -->
<img src="icons/crystal/image/new_page.png" alt="New" width="16" height="16" />
<!-- END new_page_button_icon.html -->
__icons/crystal/template/revisions_button_icon.html__
<!-- BEGIN revisions_button_icon.html -->
<img src="icons/crystal/image/revisions_previous.png" alt="[% hub.pages.current.revision_number %]&nbsp;Revisions" width="16" height="16" />
<!-- END revisions_button_icon.html -->
__icons/crystal/template/revisions_controls_current_icon.html__
<!-- BEGIN revisions_controls_current_icon.html -->
<img src="icons/crystal/image/revisions_current.png" alt="Current" width="16" height="16" />
<!-- END revisions_controls_current_icon.html -->
__icons/crystal/template/revisions_controls_next_icon.html__
<!-- BEGIN revisions_controls_next_icon.html -->
<img src="icons/crystal/image/revisions_next.png" alt="Next" width="16" height="16" />
<!-- END revisions_controls_next_icon.html -->
__icons/crystal/template/revisions_controls_previous_icon.html__
<!-- BEGIN revisions_controls_previous_icon.html -->
<img src="icons/crystal/image/revisions_previous.png" alt="Previous" width="16" height="16" />
<!-- END revisions_controls_previous_icon.html -->
__icons/crystal/template/user_preferences_button_icon.html__
<!-- BEGIN user_preferences_button_icon.html -->
<img src="icons/crystal/image/user_preferences.png" alt="Preferences" width="16" height="16" />
<!-- END user_preferences_button_icon.html -->
__icons/crystal/template/weather_button_icon.html__
<!-- BEGIN weather_button_icon.html -->
<img src="icons/crystal/image/weather.png" alt="Weather" width="16" height="16" />
<!-- END weather_button_icon.html -->
__icons/crystal/image/.htaccess__
Allow from all
__icons/crystal/image/recent_changes.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI
WXMAAG6yAABusgHyVLlyAAAC0UlEQVR42pWSX0hTcRTHv/f32+6dzWu2XLVsZGqm/bUiIop6kIqS
HiqoxwqK8qWoCIN66w8UhGBI/whK+m9hMciyf2RpaYKOdK2ptZVTr9embd7r1bmdHvoPRfaB83TO
5xw453CMgM8ej2m9NrByYzp33G7v+jg4RD9y7G/S+auvHEdO3JRjw8NQy25dcIqWu5nDRtWV/Tnr
fq0z/UkuLavPmpk98cmYxRlyw6XbVelg+fToKcQDkzFYUpv1W4Pi89VWUTTnTp1in5diGzVbNLMF
oplnMyZIWlMTkjta82PlLphWJsNdrxhKfP4NoPJnh2e178o0fYgiEYNCIY1UNUKKEqbOYC/5iorp
ZUY21aU6yFe6glpcD8jb2hMur2g+s2nHMRsAMM+b90cNI0rxOEEQBDD2NYZqnsL+sR123YCux/D2
hhV62gw47Fa5IxiYevF0oQgAbPvmvIYOJXTHZGLgXADnDBTug9jcBKqoRCLjSMiejllFxRhnl9ES
6COlu6e2YO8pHQB4o9uTOjpJ3idJ5rGccQCA9qIa4q1yxIMdUMwc4smzgGwDxeNIsopC3rLcJVY5
ZZvP5y8zqWq3g4g6iZA5YZxNEARAb2uD8caLnqRE6IX7oSp+tLx4jmTZitzcucjIyqLLl0tP1tW4
VOHbLqWHj2uOL1o4bydjDF2e67h37jm0tExIViucTicmpjoRjY1CzrRJKCq5funQwS27AfQAABoa
m1eHI/2xz2GNotEY9fcPUHuwm/wfFHofUMnr66LXzUH6FNLozIX7VQDSvl+RA4Db3fjBYknyx4lN
GI4jVZLMgsWSAMkswsQ5zCaOlLGJqK7zte3ZtWlrf6TX+7cPtuwtPLzUVVF97V1AHTCMKPX16RQK
aVTvDoTmzM9b/X3ov+DLV21ILznnOvqqwR/0tnYPrllfUABAGon8K8IY2/jk/LUFywHI/yuPiC8o
5UKlo5P8HgAAAABJRU5ErkJggg==
__icons/crystal/image/edit.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI
WXMAAAsRAAALEQF/ZF+RAAACQklEQVR42oWSzU8TURTFf28+OnQ6gC0pYtBIRExs1I2RmKCJKxI1
LtyyMnHnwv8CV278C4hxo3ujC4ImuseAGmNQQSUQCpShHzPtzLz3XLTFlhq5yX25ebn3nPPOfWL5
85p2XYfOaEQxUSOhXPzNufUHhNHlytZX/+nq/OtHM8vxZmev5boO42MjBxdaa+pRQhwpKrsvGL60
ivBH+/NO7v7WO2MRmOsC4FAIIbBMAxWsc8x9iSgG8O0NwZfBuDFc+AEfuvoN/hECjfDncVIfYdtE
lWxW+q4NhDOzs4+fPDtzJAD1EkbtFUa1AdJhZ8cjKNxCq2Rq39+dOhqguoQVv0fUMySVAfZHp8kW
JunvdwnD2v+foAG1PofpehB71IIRwrEbZHJ5bNvu4eoxUW1/wsysQsWDuk05dRa3cB3TSWFZZqsr
K1qzidXJrOMQVXqOZaehYRLVDPZP3CQ3dBwpJWhNuVxOA/mW+poFIJVCKo32v2OmShB4gKBYEgzd
vU0iE4IgJAgCqpWqA7SluBaAVqCkRkuJKfNAg+pehUr+KlYjJooDkjhBSdmU2mFXlwcyMRHyCome
4OfGIurCJCQJWmmEEAghMAxDAfV2dgHs7oWsLa2QEwp9/g52/iS6xWgYBk6fw2B2sAb4sKcP1thW
FUcK/1cR++I07qkJDMPEtm08L0Mul8V1XdLptGwPH6xRiGYOnx4ne+8hwvXQChKpsCwLpTRKKYQQ
vf9gY3OLhYW3f53RuqlIg24e6FZdrdZ6AP4AalQE7Zq6cRIAAAAASUVORK5CYII=
__icons/crystal/image/favorites.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAPCAYAAADtc08vAAAABGdBTUEAAK/INwWK6QAAAAZiS0dE
AP8A/wD/oL2nkwAAAAlwSFlzAAAASAAAAEgARslrPgAAAfRJREFUeNqVkr1rU1EYxn/npslNvNhe
bBxKQW+RUJBam0HwA23o4uIiOLg1+Q/i4tdiddOlFUHEJcXJRRBd1IB0tYN0EJQGmmJ7TVOT5iYS
S3LPOddBK4YkBc90eM9zfrzv+zywz2ncJle7QW4/jej34N3CNobMou9Du9IaG3mI10tn9AMEAdnw
iaN2ZPK4rSTZfrq+ACLGbCQ1yYGZY+iwMftfgOp10qHEqCNiGwhrg+i442zeOzyndd7u2oF+QE5p
HOWDikVS2hpC+WBdPUMoXgZAlo9QerKEUrC7VQcz6tWLjRUlWRfqPjmdGE+HZk6DufOH6/ZpOA6Y
KFey9vQD5Y87iwJgd46sHgzNR6+cRIR+9vdMCpQLnx6v8qOsrl3Is/DXxtpN0tjRnHV2kIF4tPtz
y6C5Kll7/Y3Gd505/5bFrhzUHo1k/Up5Pn5xuCfg87MKXkldPveGl3vlgY6NjibscHMb6q3fBf2P
TwrMmEDrzkB1ANru1+lYGPDa4Ana9QCsgMiwAAGWCVKSApZ6AlSjmTJjAargU9rUVKvBivTBPiSm
nAkD+yAoyXTPIGmdt9tuFa+gKXxRnlcLMskXJE+9Irm9FWSW3ynPLSgMmOoYe+9SyOBoTVH53NWa
hYnnnbO+T2ErSVZK7ijN2KVl1gF+AZvRzXR1Z+EtAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFn
ZVJlYWR5ccllPAAAAABJRU5ErkJggg==
__icons/crystal/image/guest_book.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAAAZiS0dE
AP8A/wD/oL2nkwAAAAlwSFlzAAAASAAAAEgARslrPgAAAxBJREFUeNqVU1tsSwEY/s45Pe2p6nVd
t6o61Nw2ouIWcamnmRC3kQmWDHUXLwiRmNWDJwkhHpBI3EM2YRtZQibiHmZ2Mds6o2GVbV1Vu+lZ
e3p+L7YQ9uBL/qf/+77k//L9ICL810Sy8p5fXHHdaTM4iQiDC959g0POdYGIwLnLF8Cx2/uXODzS
Q98d3V+qZ9CJA3lvRLvBqcIvWAzaoqkTrPnclJtXNq+ddirNMiuNzSgcpXReLgYApEZ7wDCl+By2
OuIh7JntmfboqSUfRARMvGba5qt/GeySaavvHdX5e4mI6MCZEMFYdOjCadNCSjq7qVFHdFdDdC6L
fIsslTwHJ4gIGQsq9lQ8DMdbPkrU4P9BJy+1U60/Rt9lovNllRRscUr0XvtLPI5K8myVAGxEBJad
csPhmSluFwRe6P4mo78fmOhKw+0HIbS1heDNPQV7qkODDwrwOZN8tyIVJVVdm4ioCwBURkP6/pmT
TZOivSnEegkKGGh4BllOC26Wt8M8XcQY1ojUJx2K7xk/HKsKbCai7oHsuIVzrUvtGbFZD18kEIlb
EYklEe1TwHEsklIMjxutMLBaBFg3qrWHdQ1+STqyb+WjAQOVyJx90vR23VKdzSIK3Ht86RSh06rQ
2SND6pWRZF042eTFkuXjsHe5XmM2H/dpHIWqRPCajyiV4hpbkq2C3FA9fzabe/+1zWxPHw5Bq0d/
QoHC6SEM0wPccDQ1h2FIE5DrMSGcmO95V/v0a8mhTa9VUoISAGrz80y+8S7em2GU5tX5x2LEyGyw
TBJ9cRkMWPT1cWis74GW0aH+zYsYEoEQAAwWqawqcnHjGsOP1n6V02SziGZtC4LfRPBqFVIKoFEr
UDMGFB8tjzbf37GT5I5SAGCIaMADgppRu7P5nFXrC8ru1CweM2l8NtTDMhGXZARDSbS31kXbqnft
JLnj6mCI+A2/nzPBxXtHmKR5TQEX4spo1Lx6Fu15e/APMQAM+XVFq/VrNmzxBtyrX5FtzpUYNI71
/+INaSDwUNttXJY6c9lBCGLBULyf/NzahDK0JMAAAAAZdEVYdFNvZnR3YXJlAEFkb2JlIEltYWdl
UmVhZHlxyWU8AAAAAElFTkSuQmCC
__icons/crystal/image/home.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAAAZiS0dE
AP8A/wD/oL2nkwAAAAlwSFlzAAAASAAAAEgARslrPgAAAntJREFUeNqdkk1IVHEUxX//57wpm9Hh
kY6jjppZKWZh2qYwcWPtJNAW7YooDCNaFBW5CKJVLqIahCCoRdHCwCCEIjKRNgl9iVGohGQ6Or6R
JufLefNuC50ahKA6m3vhnnO/OPAHnADP5F7uH4YewMm/4LSLuoXO0hHzTI1Mlym5ojMA+P9K3FtO
x0JnScjs2S/myQoZK1Yy7VfS72HCDc1r+Vp2PlTFxUPNrofKMAqIhMFOoGkQTsEut6oa9jFQC0ey
G+Ssxg1T27nr96gzSk9puHWIR4gMzZEIgdcATQfDqZzHCtXB+TB57+AZgALYBe3P21Qf1upOyzAX
WkfuqVs4zCCpQDeefAW5K9NExPaN0GLBsAIwuxuFyBewbBiPYha1UtVzD62oAIDvbz8RPNeGNzmB
eH8fvrFPlDI7lFDTAEDs8zLppiOkthYSjETxV27DZS8RX5wht7qVmd6blEw8Isfx7dcPHBmxaW6l
+MIl3A11PD7k5+mUhntbC40VG8kdu8uWLg+1167z4fYO8oYfUJAYhJoGcs43l1z+FNsj9TfuKGex
FwCXYeAznJQZOkQX2LzvAOs37cZTVEp+/U7CvmrevPqa3OSNOwAqA4GArMXU6BsZffFEXvffk8mx
txJZSkgoFJLZ2VkJ/1iSQCAggN8BfFlrjmRymZdXj5Ief08eEGw7TtPZAPF4HBEhNj+XoU47soW2
bWOl00SjcQqcy/gKQdch6LCJxRIkk0ksyyIWi2U9MduKmgZWGhuNOv8GynVYTEHCk0fashARdF1H
RNIZE2r8HzIOXtmgq6tLAZLNaC8qE/IXlJHWMBNifxwajEfNoCtTX9XwE84vDujKUeJ+AAAAAElF
TkSuQmCC
__icons/crystal/image/new_page.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAAAZiS0dE
AP8A/wD/oL2nkwAAAAlwSFlzAAAASAAAAEgARslrPgAAAd1JREFUeNqNk81qVEEQhb+q230nZoKI
RFAQXGlwEV/AjUsfQN/BtVs3rgKuXPgYPoEr3QQkaxH8CQkkqCMhmZ+rmZnbXeXi3puMkETPqulu
Tp1Tp0o2tz4eXLm80jN3OpjDdDqjntccHI401XY0mVQPixA+qCpfPn/i+bMnAIReWfbv3rm5xALc
nencyAm2d/ZY6V9a3t79/nb/2+Bxr9d7t/hXOQMigiqIGloo12+s8uD++ura7VtvYgiP7FQs4SwC
BwQoy8DO7h4/BwOW+0ukOpfj0fC1mT0FXp6rAEBUUIFrq1eZ187gxxFft/cpl0qqarhxoQIBVIRU
G/fW15hNaw6PRhwcDomxZOv95j8suJOzkcgMh7+pqimz2ZwyRmIMFEVxMUEyZ1LNSSlh2SnLiCiY
GTFERC5oYp2N4+OabI0ZLYSAIlKScyLG2JrsCNrztM4IUKfcJqBYBlFIYkg2IFCEgCxICF0MKdmJ
NCkEkiNIMxMieAFqUEgXdDtItth5aEi6y5ZdC0VQRKStfqrg3Dn4X2jH4NYsEd4IXNgtvJtdbyJe
tBC6t5V+PLk0aFJwSMnJ5qScsToTYvl3E0fj8a+NF6+SamiLGILibriDt5vh7uCOiFKNJ7OO4A9J
GNuA6MSiTwAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAAASUVORK5CYII=
__icons/crystal/image/plugin_index.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAAAZiS0dE
AP8A/wD/oL2nkwAAAAlwSFlzAAAASAAAAEgARslrPgAAAylJREFUeNqFjd1vU3UAht9zzq8fZz3r
Cl1nXTc3sENYJgkXiskSE2dmQmKMiuGCYBaMFyREucIr/wEvuDCZ0QtjjJpInCJXxs8LEJwidhYC
7ejH1p620NL2tD39Ouf35YVBExPwuXmvnudVzp1LwggQEE2Bx6uhUrKg634wIVAu3SXNZmslYPj3
PDGXPSDs/ONX1quf/pm89gEPz+R/vPQHCP6DoihQVQXtpv3M1lb57WbTXnIdimzGj8XF/Vh6pXl6
Yd/I0d836ZlvKH+X/CsCqqpACDFf2L7zVqPROTYR2aHFYhNgLsdgSJFIUJnJBkBULXbN3Fhyht33
yb1XysRD7U7nZL/vnNgZNiKxqTAY43BdBsYEGGdglCvOUKJhGYjv2Rmfu5V9iqiqV3Fdepy57mmf
l+yNxycgJcAYB+cCXEhIIcG5gOASUkpMxsZQLBp7GQ28Smq19Ojco3Oru+en9V7XAb0ncgn+jygA
ANTlsO0hioUqTNOC4wxHSDSYWKXc0YFDCI/rcJwBGBcQTPy9ElAA3Km2YbV60P1eaISgbbf6UOg2
0ZvVZx+ZsmCWbsPrWUQo9DAIITAMHxRVxWDgol7vIn2zgo49wMxMBPH4JHL5zVtWa/tzLWWqF50K
jc6GGo8Vq0nUW9PQNANWqwvGBKzWED2bwixbyGZK4FwgGg0hGByP5LayCa1SrVR+S5e/btdlzjQ5
NjbrV42RSLTdpoFarYOx4CgKxXLr+x/OfpJKXz0fHJ1amJ6eCAQChvrr+mWLAMDQ6TtrFzY+9vr8
X7jOd0gmL87vX1g+Nb/vwIs3Ur+sr3350Yf5fOqnUGi88dzykaeFkMv9voNur6cquA+a5vFMTu4+
WC5nakKI3MrKGzj80mtnnKFz0nU5KRQsrH313mfkfgHOKTXNzUsAcPjl1/H8oeNvaopyynUZimYD
hUKZDwZ3r6j4HzTNCylncf1G7gWfT0O36yCfKzR/vnz2nUw2cZ48SNb1IA4+eRRC+FAy657+QGLX
rilIIFhtXLh+MyXMBwbGxiKgtInK7QpyueFqKv1tdnYm6un1XdW2B2FVVTx/Ae9BvzIvR5OLAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAABJRU5ErkJggg==
__icons/crystal/image/revisions.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAANjr9RwUqgAAACBjSFJN
AABtmAAAc44AAOpIAACF/wAAd+8AANDwAAAyvwAAIBuCk5GZAAAABmJLR0QA/wD/AP+gvaeTAAAA
CXBIWXMAAAsTAAALEwEAmpwYAAADCklEQVR42lXQy29UdQDF8e/v3ju305mhCH3RUloBa1pKqqUz
EYptaOKiYgILXIDGhSsjWxPjSnHTDSYmPlCSBl8bE0WjGElNKgvCABWSKvSV0NJOp9Ox7bxf9/1z
pfGeP+CTc4648M0tHGliu/bySF/H3oXk9l9LRefrO4+zH789eoBkpkRJCWG50LvDY/7REuPnX+Hf
aJPucc5F7mC6Vf1k7JB+Mka05sjog5WNjxZXU67jyWkHecGV/OYBEn80PFAJoBKQE59PkC9WiB0/
xuFno3S2tqiGbR8rVmuTa+kttjL5mhDiNeDqf4DpQKw3y40FR3a+DmP2We5OPmD83fcxbYO+I4Mc
GRqhfU87kSea6+/Gb77nA758KS4LmWxlZ2g1sJEuEK9/E/uExcGR5+jnNMs3qkxc/IC5xVnOnH8L
z/PKvgn5lTItu/eH3xh7kYqXY351iFQmSUHb5vruyxgn1glGGzltjdKUa2PhT0wfYCn9pLOLTF2+
SLli0PV0F7HhKKIO0j9t03L0edbMFLfcH+hvSuPZTYYPKFuOvHl7QBRKAxzsMXHVaa5c+ozNQoau
w53M2tMUwvdpr+2jqTJEwp2t+YDcloqV12jfU0NxHOIPnyE+M8CB3gKttU/JfTVId885tEMJ0CTS
sfwNnuy5zb5OiaJ1MDPXyqP5AG27KuwQBuiCfEs31+7NYfySYHB4FOlZ/g9M1RYyIsiU/iDLQ46O
SkLhbv7eiOF6gs2VRaqWidm8n/sZiz7h+QF0BReH5HoSu8GhRJmV2nWq+nc05LpRGzvQHIvidgbV
qKFI1/+Bq1ikiilExEOrE0jXw6xZlIJFxKZB1YFiqUTVctGFCp4fUH6d/JGt4ho0OLhhi4pXxgoa
OBEDRYJUg1SVMOVABFMqKNKxfIAe1MWHZ7/om74yM7UxlaE+V0/dTpVqqIRprj/uTExdG9bXGOvQ
eKqtERVp+wBVVdF0dU6r017Qgqr45OWrwvu2ebzrXiwVkrsSUlFOeaouvn/nVXXvws+XlpeXfv8/
8A+69HqI8KMwjgAAAABJRU5ErkJggg==
__icons/crystal/image/revisions_current.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI
WXMAAAsKAAALCgG/Q2ZTAAACyElEQVR42o2TT2hUZxTFf9/33pvMTOZlzCTOTKKmYgajFdGMBESr
0GYhqN0UCkWlBTVqXIjQTRddFER3LhRx4bPpSlBwI7ELFUFEIcY/MbhIig2amNoxk3EmbyaPeTPv
j4vgK1GRHjibj3PPd+89XMEnkO0fDYPXg+9lwBfgTahu+eGw0Wt9qBUfFMZA/IqiHZGhpviK5jpR
zeGvmTCeXZoTrnVFdYsnHxg7pj4yyPaPphHyTirZ0vXTN3G+WqvQFFUAsOs+T/62GLhd4fnLmdmI
m/v+/oWddwKDbP/TGEI+yn7Z3nV8dxg9ogZdXR96y+7NCQDqrsfvN4rcGH5TiNlj6+8O7P1XAWjr
OXwqlUp+e2xnGIHEsj0s22NZa4gNqxq5eneWhK5h13z29bZw4c9c1JGN+q6sclNmjzwKI7WDO7pD
VKouebMWUI8q6FGFH75uZWjMJG/WAHh8vhtPie955axrl0BPKByLN0dc8iVnEW89LgGQ0DW+29bC
xD/VYDTZsCRmKp1bVCCTiEnypkNEWxQK5rzDmo4IK5Y2kG4OsW1j8j8DLYyQakYFRM1VmCoonDmU
4nNY36Esyl/gSwnexJzlM15oZXTS5//CdWyEZ02rqlt+6NilOSnS8V8ue4Gg6ig4Lpz9EbpXLrz9
fMnl9N6FLrxqcT7hjo/IYaPXEq41IO0cHU1mwNWJIhcP1IPi09fKVEwz+EBz8oNJdfK1BFDd4omZ
mdxEyDNJ69WAXcs0AP64VcAsV0jrCylsOjpCyhk6BxSCtW/tG+ysaW03N2biq9Z0xBBCsLx1wWB6
to7v+4xPVXj6vDidrt87nBZj9wzDMBfltn3/pTZL++K3aLRxz8pUKLZEbwCgVLZ5mavN21ZxMOUM
nUspL54ZhmF+dI0AfX19oVfOunZT6dwipJoR+FJ41nTCHR9JqpOvgYJhGLX3+neObSe9XGS9hgAA
AABJRU5ErkJggg==
__icons/crystal/image/revisions_next.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI
WXMAAAsMAAALDAE/QCLIAAAC7ElEQVR42n2TzU8cdRjHP7/fzOzO4rDb3VK6lAqkRVdrsJam0dAm
mp6McrLtGT0QWxMTD4aTh178B4zxsrHGREmNRg+2hxpNCPHSFhabpkKFVVg2LJSuuzuw47yPh5H1
Jeo3eQ7Py+c5PN88gn/R6KU7OoSniMJhiASEZTXYuX2cq1axWPzbrPgHaIB4B0W7KBPpzKNZjy7N
5/4DndBptkRgfaYGjXef5ovK3iLxFziPkDMHe/cXJs5mOPOkQrpLAcDxIkorFle+22V59cHDVLB5
4Vj01UyxWIwXjF76wUDIudFjhwpvjet0p1QAbi77ADz7WJx7QciHNxrcuLVVN5zFkYIyU4s7RJcP
9vYUXn1Bw3HBcWPwwulHAJiebfNEXzz5yliate1w/09l6zIhbyqjF+d0lOT0uTMZPd0FlhN0Imuo
dCUVRgYTfHPHQQoPyw7JpHzmy1EhcHc/UYFTCd3IZFMBKxsRrd/+vOt82eTc6TSFfo2Js918cL3J
tbspTCeLTEaG6R4dU4HhnCHZNn3GnztAoV/jv/TGy/tYfAgLqyA1HSHVYQkIN1Co1JX/hTtuDYEQ
sX2CSKoQlltWxFK9h7c/DRkZEB13wxCeGYITgzG8sAYfzYIqwfYdEqFVVdVg57bvNFtS5DP3qhH3
qhEAtq8wchheez6G765HTE2HpDSQgGk32rlgaUEe56olAuuKdDYZSJudeDzX4L2JGF6uebx/rcmR
fSZDGRPpbKL521/3qmsbSqlUYuDE+Vu7dnh+sEfJHUhHGEkfI+lzJJ+k1Q74+Nt6p+baFvd/2ar2
ebNThmyuKAAvnUzZjbD/euVXZdzQZfZwT5JUQrJYsVms2OiaIKnCaq3N/FK92ud9/3peLs8BlgJQ
KpV48aTRaHndn6831O6fN92C7bgJ2wtp7rqs1na4+WOrvVHb+jLvzU79AZudX9jT5OQkQGLdf+qQ
qRwdE1IdFkRShFY1Fywt9KprG0AdcPe+8XfIhUpWAVJA4QAAAABJRU5ErkJggg==
__icons/crystal/image/revisions_previous.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI
WXMAAAsMAAALDAE/QCLIAAAC60lEQVR42oWTTWhcZRiFn++7d2bujHdmOpM2MwmkCc1gYqW1nRKh
tWRhF0LUlXXhD1SE0GahuHThQhAL3XflxYDSlgripi5sVawSoU3aJEVpR9KQn6Z2Ms30Zu4kl/lm
7o+L0IG0BV94Ny/nnMU57xE8Y4pjtwwIhgiDAoQCgnndr09NWsfcJ7HiCaIJ4jO0yCkZTaV7Mi0S
EY9/KgaBWq8J3/1O9+0vr1uvLT8lUBy7lUfIq7nOjoETr6Y5+oJGKqEBoFoh03ddxn/dYG6xshb3
y2//+dXI1bZAcWzWRMgbxb3dA5+8YZCM6wBMljYAeHnQBKDlB3x92eby5GrVVHf2/TH+3gMNoGvo
5OlcrvPNj0cMBBJXBfy96HJ8uIO9vQl+vlkjFpGoZshgT4y7q1qiXCP5elG7ohVP3TDQYhfeOpo2
Uglwlc/qoxbHhzsAeFRvsVZv4Sp/axsB6bjHzflwwG9unNOBoahhpjNxn4frAUZEtsllu8kv07W2
yc6mx4+3szgqg4yFptPsP6IDhawpeeh49O6KtckA+UyU94/t2hbb4f3w0TcgIwZC6gUJiKavsVzV
SCUN/m8O9oEQW+4LQqlDMF9zQ0rVnZR+glw25KXerXRnFmFmabvA7BLoEhqeIhq4K7ru16c8tV6T
Ip9GwKcXA868I9m/W3CwD8Z/f0wK0bUAKcDQwWnYm1m/NKPdn/621X3og85kXBzuyQakY4qpuQbP
d+vsTGmMHIDrt206Eg0yhmKHoag7Nqp274c9cuJ7CaD79heVSnk+Gjjkkw3yyQYXfltjoaxYKKv2
LZ9sEA0cKqsPVnLetbNAtf3Kr4xe6m9Guq4cKKT3DO42EWJbTQjDkNLyBrNz9kq+NXEyL+5MWJbl
bEMNf3i+y430fp5IPPduXy5q7kjGAFivKxbLzU3l2pdy3rWzOW3hL8uynKfaCDA6Ohq9573Y7Wj9
R4TUC4JQisBdyfqlmU596V+gallW8zH+P7EpNNyzUPrnAAAAAElFTkSuQmCC
__icons/crystal/image/user_preferences.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAAAZiS0dE
AP8A/wD/oL2nkwAAAAlwSFlzAAAASAAAAEgARslrPgAAAnlJREFUeNqN0U9Ik3EcBvDnt3d73bvX
Nf81c1Oc29omqaUSWCEWYdQsD0IkCkG36BQdvEkWHTx16BoECh6ETIiCRLs0ZlDNeGs1s+Zmuja1
Od3c+2573X4dsn9ky+f0vXw/PPBgdHQCw8PjGBubvBkMRsRwOLrucnncra0nT2E3GRy8C54vRHW1
2To0dF+Q5SyllFKfLyjW1TWe3Q3QQQhDAMBgMFWOjDz6RLfT13fDBaA437+iqanhQXf3pdsMo0Jv
7+UWh8NSls3mQClQU2MyAdifD1DqdHx2YKD/qtFotXZ2nj5hs1Xz8XgSKhWLUCiSAbCVD2Ds9sPt
LS2NpubmeltpqY6VpDQyGRmrqzEsReJZ9aY3UsImE0trW8s7AvPzgcXi4souo7GCpZRClnMQRQlf
YylY9bLmQoOnvbON7XJ5pDeRddn/FxCLLQfcbterubnFytlZv2pq6tkaUWo5iz6j1AauY29sBmU6
UnjsSEWHe0YUVuJ/IuS3WwfADiDrPHqo584V7TWDwgsODGgWoCUavF7QrF289bnn/Rdx4meD34A0
gBCAsDoXDbU5yHlLLc9Dy4JoCkAUgKGCck3mIqdLkITo5vcmDHbISiK36vamBXt5UYflgJpDCQcw
DJCSUaXPcQ69zunySi/Wxa3gjgAARJOyf/qtJJh5jdN2kONIPAkEokA0AUuNkgtH1Wb3h8T4PwEA
iImyf9qbEqqgctaWpjlSQABRBhQ5eOZVePouMZkXAICNlOx/7ksL5Sx/ps6Q0xAW+LhQgMHHonsp
lnpI/gf8yD4dd/xc/Z7+ci0xTfgk38vgxj0AT3YN/JqaWACa2F5M/AZHgQ0PiyM9hgAAABl0RVh0
U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAAASUVORK5CYII=
__icons/crystal/image/weather.png__
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI
WXMAAAsRAAALEQF/ZF+RAAADUUlEQVR42n2TW2hbBQCGv3NJs1yW5tbGpkmvSx1bNyv0IqxjDlkt
1lo22LRWBekGxSGKdDIL4lAUkTnQBxmKL14ZyIqdG5NirbIq2NW1dG3H6uh1zZo0jctJmuTknBwf
ZChF/J9+Pn6+t1/gf2K8Rh0m5iJhgk4ri+YPSGzeyJvBylPCs46Y4bHtNl0yxi2jhi1xymuyW/R5
rRoynZv3wr2S7TIdFOLaTul+aYhZ14DYfthMg9/OrxegrIn8Jx+tiB69G6uxrhbxm/nUJsHCizis
Y/zkPXSkjqfbybucZGe/QUuMUWBVMY9GQd8Ll4f0uD35ivsrPgQQ7wnKggjeUFWOZhu5xAi5829Q
ML+KZclJciDGoiJiPDRG3p4UrTJx9bmCJwEEvUN6Gd1eL+x55HGh63hhXh6EqSnEB/ZBWgFdhViE
9csXiWXvENohwM8+iGgLwvm1CiF9nKqEwk5Xzjpger0RfTWJVHsEMhkQVTBBxhA5t7SXlLMRSVmk
+tNXU83xwQbLl9qMLC5v6SrO5w4pmXxYvjJcIgQaQDAAlZhkof9uMzPJMh6rDNJky5NSt/H+/pNb
kmfnHs11z26Vehq1qONB472CJTEo7A41KlYHg5YDTG14GMzso7W8noBkwqrreOQ8y8k0W30lolTT
0PrHxM0LcmmIMGlxl1BR03mttJlz/j7qCkuJJjZY3dApFvK4bQK/LMZRIhnm0jr7q/3M+wN690p7
sZBrk96VM5bWrJy7/ubRbzs721rE726E+T0cZ0+JEzW2SrnXhSWvMRdJsKhkMfIiP35/9da1Swsd
stCk96W1ZN+xsrNVhYFdLZasWtQkZPBoWebGZ7gdTdHPCvY7Ezgq3VRMjbN2VxhZTlVeBaKyb8e0
4+Fg0QuhjdtvOUVNnJgPU+O2sc3vRFUDKGqO5bTOyNp2UoJMQjNrb1986UZfSPi6VjwWlYv/jD1j
1ZSjFqueGRqdNA8vL0gWr1cxFfvsxvqaoXl8enmR2+RzuVAScfyh2o3g9Z4z/HB6Gs4g4OuVgCLA
AAKfb+8/8fzNjhNtnum6Hnnyi5HC6pPDhbXulvuST9xK8vFnk8GYEcleYfX02n9f+J1//hE5wEHj
MPX4esHX+zf8dwf+AkEPYmNIK8mRAAAAAElFTkSuQmCC
