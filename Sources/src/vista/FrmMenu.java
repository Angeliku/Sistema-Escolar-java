
package vista;

import java.awt.Dimension;
import javax.swing.JDesktopPane;

/**
 *
 * @author andres
 */
public class FrmMenu extends javax.swing.JFrame {
    
    public static JDesktopPane jdesktop_menu;

    public FrmMenu() {
        initComponents();
        this.setSize(new Dimension(1200,700));
        this.setExtendedState(this.MAXIMIZED_BOTH);
        this.setLocationRelativeTo(null);
        this.setTitle("Menu Principal");
        
        this.setLayout(null);
        jdesktop_menu = new JDesktopPane();
        
        int ancho = java.awt.Toolkit.getDefaultToolkit().getScreenSize().width;
        int alto = java.awt.Toolkit.getDefaultToolkit().getScreenSize().height;
        this.jdesktop_menu.setBounds(0, 0, ancho ,(alto - 110));
        this.add(jdesktop_menu);
        
        
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        nuevo_usuario = new javax.swing.JMenuItem();
        gestion_usuario = new javax.swing.JMenuItem();
        jMenu2 = new javax.swing.JMenu();
        nuevo_estudiante = new javax.swing.JMenuItem();
        gestion_estudiante = new javax.swing.JMenuItem();
        jMenu3 = new javax.swing.JMenu();
        nuevo_representante = new javax.swing.JMenuItem();
        gestion_rep = new javax.swing.JMenuItem();
        jMenu4 = new javax.swing.JMenu();
        nuevo_docente = new javax.swing.JMenuItem();
        gestion_docente = new javax.swing.JMenuItem();
        jMenu5 = new javax.swing.JMenu();
        apertura_aula = new javax.swing.JMenuItem();
        gestion_aula = new javax.swing.JMenuItem();
        jMenu6 = new javax.swing.JMenu();
        jMenu7 = new javax.swing.JMenu();
        jMenu8 = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jMenu1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/usuario.png"))); // NOI18N
        jMenu1.setText("Usuario");
        jMenu1.setFont(new java.awt.Font("DejaVu Serif", 1, 14)); // NOI18N
        jMenu1.setMaximumSize(new java.awt.Dimension(120, 32767));
        jMenu1.setMinimumSize(new java.awt.Dimension(120, 50));
        jMenu1.setPreferredSize(new java.awt.Dimension(140, 50));

        nuevo_usuario.setFont(new java.awt.Font("DejaVu Serif", 0, 13)); // NOI18N
        nuevo_usuario.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/nuevo-cliente.png"))); // NOI18N
        nuevo_usuario.setText("Nuevo Usuario");
        jMenu1.add(nuevo_usuario);

        gestion_usuario.setFont(new java.awt.Font("DejaVu Serif", 0, 13)); // NOI18N
        gestion_usuario.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/configuraciones.png"))); // NOI18N
        gestion_usuario.setText("Gestinar Usuario");
        jMenu1.add(gestion_usuario);

        jMenuBar1.add(jMenu1);

        jMenu2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/Estudiantes.png"))); // NOI18N
        jMenu2.setText("Estudiantes");
        jMenu2.setFont(new java.awt.Font("DejaVu Serif", 1, 14)); // NOI18N
        jMenu2.setMaximumSize(new java.awt.Dimension(160, 32767));
        jMenu2.setPreferredSize(new java.awt.Dimension(150, 50));

        nuevo_estudiante.setFont(new java.awt.Font("DejaVu Serif", 0, 13)); // NOI18N
        nuevo_estudiante.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/nuevo.png"))); // NOI18N
        nuevo_estudiante.setText("Nuevo Ingreso");
        jMenu2.add(nuevo_estudiante);

        gestion_estudiante.setFont(new java.awt.Font("DejaVu Serif", 0, 13)); // NOI18N
        gestion_estudiante.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/configuraciones.png"))); // NOI18N
        gestion_estudiante.setText("Gestion de Estudiante");
        jMenu2.add(gestion_estudiante);

        jMenuBar1.add(jMenu2);

        jMenu3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/Representates.png"))); // NOI18N
        jMenu3.setText("Representantes");
        jMenu3.setFont(new java.awt.Font("DejaVu Serif", 1, 14)); // NOI18N
        jMenu3.setMaximumSize(new java.awt.Dimension(190, 32767));
        jMenu3.setPreferredSize(new java.awt.Dimension(170, 50));

        nuevo_representante.setFont(new java.awt.Font("DejaVu Serif", 0, 13)); // NOI18N
        nuevo_representante.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/nuevo-cliente.png"))); // NOI18N
        nuevo_representante.setText("Nuevo Representante");
        nuevo_representante.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nuevo_representanteActionPerformed(evt);
            }
        });
        jMenu3.add(nuevo_representante);

        gestion_rep.setFont(new java.awt.Font("DejaVu Serif", 0, 13)); // NOI18N
        gestion_rep.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/configuraciones.png"))); // NOI18N
        gestion_rep.setText("Gestion de Representante");
        jMenu3.add(gestion_rep);

        jMenuBar1.add(jMenu3);

        jMenu4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/icono (138).png"))); // NOI18N
        jMenu4.setText("Docentes");
        jMenu4.setFont(new java.awt.Font("DejaVu Serif", 1, 14)); // NOI18N
        jMenu4.setMaximumSize(new java.awt.Dimension(150, 50));
        jMenu4.setPreferredSize(new java.awt.Dimension(150, 50));

        nuevo_docente.setFont(new java.awt.Font("DejaVu Serif", 0, 13)); // NOI18N
        nuevo_docente.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/nuevo.png"))); // NOI18N
        nuevo_docente.setText("Nuevo Docente");
        jMenu4.add(nuevo_docente);

        gestion_docente.setFont(new java.awt.Font("DejaVu Serif", 0, 13)); // NOI18N
        gestion_docente.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/configuraciones.png"))); // NOI18N
        gestion_docente.setText("Gestion de Docente");
        jMenu4.add(gestion_docente);

        jMenuBar1.add(jMenu4);

        jMenu5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/icono (136).png"))); // NOI18N
        jMenu5.setText("Aulas");
        jMenu5.setFont(new java.awt.Font("DejaVu Serif", 1, 14)); // NOI18N
        jMenu5.setMaximumSize(new java.awt.Dimension(150, 50));
        jMenu5.setPreferredSize(new java.awt.Dimension(150, 50));

        apertura_aula.setFont(new java.awt.Font("DejaVu Serif", 0, 13)); // NOI18N
        apertura_aula.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/anadir.png"))); // NOI18N
        apertura_aula.setText("Apertura");
        jMenu5.add(apertura_aula);

        gestion_aula.setFont(new java.awt.Font("DejaVu Serif", 0, 13)); // NOI18N
        gestion_aula.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/icono (1).png"))); // NOI18N
        gestion_aula.setText("Gestion");
        jMenu5.add(gestion_aula);

        jMenuBar1.add(jMenu5);

        jMenu6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/icono (124).png"))); // NOI18N
        jMenu6.setText("Matricula");
        jMenu6.setFont(new java.awt.Font("DejaVu Serif", 1, 14)); // NOI18N
        jMenu6.setMaximumSize(new java.awt.Dimension(150, 50));
        jMenu6.setPreferredSize(new java.awt.Dimension(150, 50));
        jMenuBar1.add(jMenu6);

        jMenu7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/icono (80).png"))); // NOI18N
        jMenu7.setText("Reportes");
        jMenu7.setFont(new java.awt.Font("DejaVu Serif", 1, 14)); // NOI18N
        jMenu7.setPreferredSize(new java.awt.Dimension(150, 50));
        jMenuBar1.add(jMenu7);

        jMenu8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/cerrar-sesion.png"))); // NOI18N
        jMenu8.setText("Cerrar");
        jMenu8.setFont(new java.awt.Font("DejaVu Serif", 1, 14)); // NOI18N
        jMenu8.setPreferredSize(new java.awt.Dimension(150, 50));
        jMenuBar1.add(jMenu8);

        setJMenuBar(jMenuBar1);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void nuevo_representanteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nuevo_representanteActionPerformed
        Inter_representante intercate = new Inter_representante();
        jdesktop_menu.add(intercate);
        intercate.setVisible(true);
    }//GEN-LAST:event_nuevo_representanteActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(FrmMenu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrmMenu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrmMenu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrmMenu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmMenu().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenuItem apertura_aula;
    private javax.swing.JMenuItem gestion_aula;
    private javax.swing.JMenuItem gestion_docente;
    private javax.swing.JMenuItem gestion_estudiante;
    private javax.swing.JMenuItem gestion_rep;
    private javax.swing.JMenuItem gestion_usuario;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenu jMenu3;
    private javax.swing.JMenu jMenu4;
    private javax.swing.JMenu jMenu5;
    private javax.swing.JMenu jMenu6;
    private javax.swing.JMenu jMenu7;
    private javax.swing.JMenu jMenu8;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem nuevo_docente;
    private javax.swing.JMenuItem nuevo_estudiante;
    private javax.swing.JMenuItem nuevo_representante;
    private javax.swing.JMenuItem nuevo_usuario;
    // End of variables declaration//GEN-END:variables
}
