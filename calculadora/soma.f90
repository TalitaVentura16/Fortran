program soma
    !Este programa realiza a soma simples de dois elementos. 

    implicit none 
    !Declaracao das variaveis 
    integer :: a, b, adicao

    !Codigo principal
    write (*,*) "Digite o primeiro número"
    read (*, *) a 

    write (*,*) "Digite o segundo número" 
    read (*, *) b

    adicao = a + b

    print *, "A soma de ", a, " + ", b, " é igual à ", adicao

end program soma 
