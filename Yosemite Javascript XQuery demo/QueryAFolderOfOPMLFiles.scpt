JsOsaDAS1.001.00bplist00�Vscript_"// Simple demonstration of using XQuery from OS X Yosemite Javascript for Applications
			
				//outline[@start > "2015-02-30" and @start < "2015-04-01"]/substring(@start,1,10) \
			) \
			let $v := distinct-values(//outline[@priority=1 and @due]/substring(@due,1,10)) \
				for $d in $v \
				let $dte := xs:date($d), \
					$e := xs:date("1901-01-06") \
				order by $d \
				return (\
					concat( \
						"\n#### <font color=gray>", \
						("Sun", "Mon", "Tue", "Wed","Thu", "Fri", "Sat")[ \
							(days-from-duration($dte - $e) mod 7) + 1 \
						], \
						"</font> <font color=silver>", substring($d, 1, 7), \
						"</font> <font color=red>", substring($d, 9, 2), "</font> " \
					), \
					for $i in //outline[@priority=1 and starts-with(@due, $d)] \
					let $it := $i/@due, \
						$t := substring($it, 12), \
						$tme := if ($t) then xs:time(concat($t, ":00")) else xs:time("00:00:00")\
					order by $t empty least \
					return concat( \
						if ($t) then concat("<b>",$t,"</b> ") else (), \
						$i/@text \
					) \
				)',
	function filesInFolder(strPath) {
				$.NSFileManager.defaultManager.contentsOfDirectoryAtPathError(
					strPath, null
				)
			),
			i = lstFiles.length;
			i = lst.length;
		console.log(lstMatch);
		var strXML = '<?xml version="1.0" encoding="utf-8"?>\n<' + strWrapElement +
			' xmlns:xi="http://www.w3.org/2003/XInclude">\n',
			i = lstFilePaths.length,
			lstParts, strPath, strFile;

		while (i--) {
			strPath = lstFilePaths[i];
			lstParts = strPath.split('/');
			strFile = encodeURI(lstParts.pop());

			strXML = strXML + '\t<' + strInnerElement + ' text="" path="' +
				encodeURI(lstParts.join('/')) + '/" file="' + strFile + 
				'">\n\t\t<xi:include href="' + encodeURI('file://' + strPath) +
				'"/>\n\t</' + strInnerElement + '>';
		}

		strXML = strXML + '\n</' + strWrapElement + '>';
		return strXML;
	}

		// debug return lst for quick harvest check
		// return lst;

 
					strTestFile
				);

			