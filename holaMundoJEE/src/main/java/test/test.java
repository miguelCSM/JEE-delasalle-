package test;

import beans.HolaMundoEJBRemote;
import javax.naming.*;

public class test {
    public static void main(String[] args) {
        System.out.println("Iniciando llamada de EJB desde el cliente");
        try {
            Context jndi = new InitialContext();
            HolaMundoEJBRemote holamunEJB = (HolaMundoEJBRemote) jndi.lookup("java:global/holaMundoJEE/HolaMundoEJBImpl!beans.HolaMundoEJBRemote");
            int resultado = holamunEJB.sumar(50, 50);
            System.out.println("El resultado de la suma es:\n" + resultado);
        } catch (NamingException e) {
            e.printStackTrace(System.out);
        }
    }
}
