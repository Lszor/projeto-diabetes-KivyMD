from kivymd.app import MDApp
from kivy.lang import Builder
from kivy.core.window import Window
from conexao import conexao

class Diabetes(MDApp):
    Window.size = (340, 640)

    def on_start(self):
        cursor = conexao.cursor()
        
        cursor.execute("SELECT NOME_PC FROM tbpaciente")
        resultado_paciente = cursor.fetchall()
        self.root.ids.lbl_paciente.text += f'\n{resultado_paciente[0][0]}'

        cursor.execute("SELECT medicamento FROM tbmedicamentos")
        resultado_medicamento = cursor.fetchall()
        self.root.ids.lbl_medicamento.text += f'\n{resultado_medicamento[0][0]}'

        conexao.close()
    def build(self):
        self.theme_cls.material_style = "M3"
        self.theme_cls.theme_style = "Dark"
        return Builder.load_file("screens/control-screen/main.kv")
    

Diabetes().run()
