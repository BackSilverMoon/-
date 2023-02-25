package com.example.chapter03.utils;

import android.content.Context;

public class Utils {

    public static int dip2px(Context context,float dpValue)
    {
        //获取当前手机的像素密度 一个dp对应多少px
        float scale = context.getResources().getDisplayMetrics().density;
        //用于四舍五入
        return (int)(dpValue * scale +0.5f);
    }
}
