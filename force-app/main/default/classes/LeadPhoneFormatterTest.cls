@IsTest
private class LeadPhoneFormatterTest {
  @IsTest
  static void formatsMobilePhone() {
    Lead lead = new Lead(
      LastName = 'Teste',
      Company = 'Acme',
      Phone = '(11) 98765-4321'
    );

    insert lead;

    Lead saved = [SELECT Phone FROM Lead WHERE Id = :lead.Id];
    System.assertEquals('(11) 98765-4321', saved.Phone);
  }

  @IsTest
  static void formatsFixedPhone() {
    Lead lead = new Lead(
      LastName = 'Teste',
      Company = 'Acme',
      Phone = '(11) 3456-7890'
    );

    insert lead;

    Lead saved = [SELECT Phone FROM Lead WHERE Id = :lead.Id];
    System.assertEquals('(11) 3456-7890', saved.Phone);
  }

  @IsTest
  static void keepsUnknownLength() {
    System.assertEquals('12345', LeadPhoneFormatter.formatPhone('12345'));
  }
}
