section .data
    message db "Hello World!", 0

section .text
    global _start

_start:
    ; afficher le message
    mov eax, 4 ; appel système pour écrire sur la sortie standard
    mov ebx, 1 ; identifiant de la sortie standard (1 = stdout)
    mov ecx, message ; adresse du message
    mov edx, 13 ; longueur du message
    int 0x80 ; appel système

    ; quitter le programme
    mov eax, 1 ; appel système pour quitter le programme
    xor ebx, ebx ; code de retour 0
    int 0x80 ; appel système
