program interpolacao_linear_csv
  implicit none
  real(8) :: x0, x1, y0, y1, x, y
  character(len=100) :: filename
  integer :: io

  ! Nome do arquivo de saída
  filename = "dados_interpolacao.csv"

  ! Recebe os valores do usuário
  print *, "Digite x0, y0:"
  read(*,*) x0, y0
  print *, "Digite x1, y1:"
  read(*,*) x1, y1
  print *, "Digite x para interpolar:"
  read(*,*) x
  ! Definir condincional dentro do intervalo
    
  ! Interpolação linear
  y = y0 + ((y1 - y0) / (x1 - x0)) * (x - x0)

  ! Salva os dados no CSV com 10 casas decimais
  open(unit=10, file=trim(filename), status='replace', action='write', iostat=io)
  if (io /= 0) then
     print *, "Erro ao abrir o arquivo."
     stop
  end if

  write(10, '(A)') "x0,y0,x1,y1,x,y_interpolado"
  write(10, '(F20.10,",",F20.10,",",F20.10,",",F20.10,",",F20.10,",",F20.10)') &
       x0, y0, x1, y1, x, y

  close(10)
  print *, "Dados salvos em ", trim(filename)
end program interpolacao_linear_csv

