package com.codewithejaz.esim_compatibility;

import android.content.Context;
import android.telephony.euicc.EuiccManager;

public class EsimChecker {

    private final Context appContext;

    public EsimChecker(Context context) {
        this.appContext = context.getApplicationContext();
    }

    private Context getApplicationContext() {
        return appContext;
    }

    public boolean checkEsimCompatibility() {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.P) {

            EuiccManager mgr = (EuiccManager) getApplicationContext().getSystemService(Context.EUICC_SERVICE);

            if (mgr != null && mgr.isEnabled()) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

}
