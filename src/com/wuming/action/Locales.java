package com.wuming.action;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class Locales {
	
	Map<String,Locale> locales;
	{
		locales = new HashMap();
		locales.put(Locale.CHINA.getDisplayLanguage(Locale.CHINA), Locale.CHINA);
		locales.put(Locale.US.getDisplayLanguage(Locale.US), Locale.US);
		
	}
	public Map<String,Locale> getLocales() {
		return locales;
	}

}
