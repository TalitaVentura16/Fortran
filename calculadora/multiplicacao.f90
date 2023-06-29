program multiplicacao 
    !Este programa realiza a multiplicacao de dois elementos.

    implicit none 
    !Declaracao das variaveis 
    integer :: a, b, produto 

    !Codigo principal 
    write (*,*) "Digite o primeiro número"
    read (*, *) a 

    write (*,*) "Digite o segundo número" 
    read (*, *) b

    produto = a * b

    print *, "A multiplicacao de ", a, " * ", b, " é igual à ", produto

end program multiplicacao  


