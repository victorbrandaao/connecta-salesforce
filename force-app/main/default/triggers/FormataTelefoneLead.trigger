trigger FormataTelefoneLead on Lead (before insert, before update) {
    LeadPhoneFormatter.applyTo(Trigger.new);
}