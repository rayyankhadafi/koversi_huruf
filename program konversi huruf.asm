;Program sederhana mengubah huruf kecil menjadi huruf kapital
;Rayyan

NAME "KONVERSI HURUF"      

ORG 100H
START:

MOV AH, 9
MOV DX, PESAN1
INT 21H
MOV AH, 1
INT 21H

CMP AL, 60H
JL SALAH
CMP AL, 7AH
JG SALAH
JLE KECIL

KECIL: 
SUB AL, 20H
PUSH AX
MOV AH, 9
MOV DX, PESAN2
INT 21H
POP DX
MOV AH, 2
INT 21H
JMP KELUAR

SALAH:
MOV AH, 9
MOV DX, PESAN3
INT 21H
JMP KELUAR

KELUAR:
MOV AH, 9
MOV DX, PESAN4
INT 21H
MOV AH, 4CH
INT 21H

PESAN1:    db 13,10,'Masukkan sebuah huruf kecil: ',13,10,'$'
PESAN2:    db 13,10,'Huruf kecil tersebut diubah menjadi: ',13,10,'$'
PESAN3:    db 13,10,'Kesalahan, yang Anda masukkan bukan huruf kecil.',13,10,'$'
PESAN4:    db 13,10,'Program selesai, kembali ke sistem operasi.',13,10,'$'
END