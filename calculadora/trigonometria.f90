program trigonometria 
    !Este programa realiza o calculo do seno, cosseno ou tangente para os 
    !valores de 30°, 45° e 60°.
    use, intrinsic :: iso_fortran_env
    implicit none

    !Declaração das variaveis
    integer :: grau, funcao_trigonometrica
    real :: resultado  
    real, dimension(3,3) :: matriz

    !Valores da matriz
    matriz = reshape((/1.0/2, sqrt(2.0)/2.0, sqrt(3.0)/2.0, sqrt(3.0)/2.0, &
                    & sqrt(2.0)/2.0, 1.0/2.0, sqrt(3.0)/3.0, 1.0, sqrt(3.0)/), shape(matriz))

    !Função trigonometrica
    !Essa funcao retorna o valor do seno, cosseno ou tangente do grau escolhido pelo usuario
    print *, "Seja bem-vindo, vamos calcular funções trigonométricas!"
    print *, "Digite qual função você deseja calcular?"
    print *, "1 - seno"
    print *, "2 - cosseno"
    print *, "3 - tangente"
    read (*,*) funcao_trigonometrica

    print *, "Para qual grau deseja calcular?"
    print *, "1 - 30°"
    print *, "2 - 45°"
    print *, "3 - 60°"
    read (*,*) grau

    select case (funcao_trigonometrica)
        case (1)
            select case (grau)
                case (1)
                    resultado = matriz(1, 1)
                case (2)
                    resultado = matriz(2, 1)
                case (3)
                    resultado = matriz(3, 1)
                case default
                    print *, "Opção inválida! Por favor, escolha uma opção válida (1, 2 ou 3)."
            end select
        case (2)
            select case (grau)
                case (1)
                    resultado = matriz(1, 2)
                case (2)
                    resultado = matriz(2, 2)
                case (3)
                    resultado = matriz(3, 2)
                case default
                    print *, "Opção inválida! Por favor, escolha uma opção válida (1, 2 ou 3)."
            end select
        case (3)
            select case (grau)
                case (1)
                    resultado = matriz(1, 3)
                case (2)
                    resultado = matriz(2, 3)
                case (3)
                    resultado = matriz(3, 3)
                case default
                    print *, "Opção inválida! Por favor, escolha uma opção válida (1, 2 ou 3)."
            end select
        case default
            print *, "Opção inválida! Por favor, escolha uma opção válida (1, 2 ou 3)."
           end select
    if (funcao_trigonometrica >= 1 .and. funcao_trigonometrica <= 3) then
        print *, "O", (funcao_trigonometrica), "de", grau, "graus é:", resultado
    end if
    ! Fim do programa
end program trigonometria

