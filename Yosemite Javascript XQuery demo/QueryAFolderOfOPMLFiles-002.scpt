JsOsaDAS1.001.00bplist00�Vscript_(p// Simple demonstration of using XQuery from OS X Yosemite Javascript for Applications
					"\n#### <font color=silver>", substring($d, 1, 7), \
					"</font> <font color=red>", substring($d, 9), "</font>" \
				), \
				let $dv := distinct-values($lines/@pom) \
				let $g := $prj//outline[@pom=$d] \
				order by number($d) descending \
				return ( \
					concat("\n##### <font color=red>", $d, "</font><font color=silver> p</font>"),\
					for $i in $g \
					let $t := $i/@text \
					order by $t \
					return concat("- ", $t) \
		
		app.activate();
		