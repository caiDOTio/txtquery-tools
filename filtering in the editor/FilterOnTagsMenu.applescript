property pTitle : "Filter FT on chosen tags"

					  (FoldingText is Copyright (c) 2014 Jesse Grosjean)
"

	Filters on all tags chosen from a menu.

	(For multiple selections in the menu, hold down the ⌘ command key)

	To include ancestors of the tagged lines:
			edit precOptions below to {axis:'///'}

	To exclude ancestors:
			edit precOptions below to {axis:'//'}
"
	function(editor, options) {

		var lstSeldTags = options.tagset,
			strPath = '///*',
			lngTags, i;
	
		lngTags = lstSeldTags.length;
		if (lngTags) {
			strPath = options.axis
			if (lngTags < 2)
				strPath += ('@' + lstSeldTags[0]);
			else {
				strPath += '(';
				for (i=lngTags; i--;) {
					strPath += ('@' + lstSeldTags[i] + ' or ');
				}
				strPath = strPath.substr(0, strPath.length -4) + ')';
			}
		}
		editor.setNodePath(strPath);
		return strPath;
	}

"