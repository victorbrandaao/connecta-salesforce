public with sharing class LeadPhoneFormatter {
    public static void applyTo(List<Lead> leads) {
        if (leads == null) {
            return;
        }

        for (Lead leadAtual : leads) {
            if (leadAtual == null) {
                continue;
            }

            String formatted = formatPhone(leadAtual.Phone);
            if (formatted != leadAtual.Phone) {
                leadAtual.Phone = formatted;
            }
        }
    }

    public static String formatPhone(String rawPhone) {
        if (String.isBlank(rawPhone)) {
            return rawPhone;
        }

        String apenasNumeros = rawPhone.replaceAll('\\D', '');
        if (apenasNumeros.length() == 11) {
            return '(' + apenasNumeros.substring(0, 2) + ') ' +
                apenasNumeros.substring(2, 7) + '-' +
                apenasNumeros.substring(7);
        }

        if (apenasNumeros.length() == 10) {
            return '(' + apenasNumeros.substring(0, 2) + ') ' +
                apenasNumeros.substring(2, 6) + '-' +
                apenasNumeros.substring(6);
        }

        return rawPhone;
    }
}
