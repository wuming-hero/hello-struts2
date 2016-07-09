package com.wuming.util;

import java.util.Comparator;

public class NameComparator implements Comparator<Object> {

    /**
     * 返回值大于0表示a>b,
     * 返回值小于0表示a<b,
     * 返回值等于0，表示a==b
     */

    @Override
    public int compare(Object a, Object b) {
        int aLength = a.toString().length();
        int bLength = b.toString().length();
        return aLength > bLength ? 1 : aLength < bLength ? -1 : 0;
    }

}
