import customtkinter as ctk

# Configuração da aparência
ctk.set_appearance_mode('dark')

# Constantes de validação
USUARIO_CORRETO = "Livia" 
SENHA_CORRETA = "123456"

# Função de validação
def validar_login():
    # .strip() remove espaços em branco acidentais no início ou fim
    usuario = campo_usuario.get().strip()
    senha = campo_senha.get().strip()
    
    # Debug no console para você ver o que está sendo capturado
    print(f"Tentativa de login - Usuário digitado: '{usuario}' | Senha digitada: '{senha}'")
    
    if usuario == USUARIO_CORRETO and senha == SENHA_CORRETA:
        resultado_login.configure(text="Login feito com sucesso", text_color="green")
        print("Resultado: SUCESSO")
    else:
        resultado_login.configure(text="Login incorreto", text_color="red")
        print("Resultado: FALHA")
        
        # Verificação específica para ajudar a identificar o erro
        if usuario != USUARIO_CORRETO:
            print(f"Erro: Usuário '{usuario}' não coincide com '{USUARIO_CORRETO}'")
        if senha != SENHA_CORRETA:
            print(f"Erro: Senha não coincide")

# Janela principal
app = ctk.CTk()
app.title("Sistema de login")
app.geometry("400x350") # Aumentei um pouco para caber as mensagens

# Usuário
label_usuario = ctk.CTkLabel(app, text="Usuário")
label_usuario.pack(pady=10)
campo_usuario = ctk.CTkEntry(app, placeholder_text="Digite seu usuário")
campo_usuario.pack(pady=10)

# Senha
label_senha = ctk.CTkLabel(app, text="Senha")
label_senha.pack(pady=10)
campo_senha = ctk.CTkEntry(app, placeholder_text="Digite sua senha", show="*")
campo_senha.pack(pady=10)

# Botão
botao_login = ctk.CTkButton(app, text="Login", command=validar_login)
botao_login.pack(pady=10)

# Resultado
resultado_login = ctk.CTkLabel(app, text="")
resultado_login.pack(pady=10)

# Iniciar app
app.mainloop()
