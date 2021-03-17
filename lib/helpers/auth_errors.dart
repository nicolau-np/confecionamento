String getErrorString(String code){
    switch(code){
      case 'ERROR_WEAK_PASSWORD':
      return "Sua senha é muito fraca";
      case 'ERROR_INVALID_EMAIL':
      return "Seu e-mail é invalido";
      
      default:
      return "Um erro indefinido ocorreu";

    }
}