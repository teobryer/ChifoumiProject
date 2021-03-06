package game;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(
        name="chifoumi",
        urlPatterns="/chifoumi",
        initParams={
                @WebInitParam(description="...", name="borne_min", value="0"),
                @WebInitParam(description="...", name="borne_max", value="10")

        })
public class ServletChifoumi extends HttpServlet {
    public ServletChifoumi() {
        super();
    }
    public List<Integer> listeChoix;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      //  super.doGet(req, resp);
        this.getServletContext().getRequestDispatcher("/WEB-INF/choixSigne.jsp").forward(req, resp);

    }
// 0 pierre 1 feuille 2 ciseaux
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      //  super.doPost(req, resp);
        int choixPlayer = Integer.parseInt( req.getParameter("signe"));
        req.setAttribute("choixPlayer",choixPlayer);


        //int choixIA = 0 + (int)(Math.random() * ((2 - 0) + 1));
        int choixIA = listeChoix.get(0 + (int)(Math.random() * ((listeChoix.size()-1 - 0) + 1))); // récupération parmis la liste de choix effectués
        if (choixIA == 0){ //  si le choix récupéré est pierre
            choixIA = 1; // alors IA sort feuille
        }
        else{
            if(choixIA == 1){ // si le choix récupéré est feuille
              choixIA =  2 ; // alors IA sort ciseaux
            }
            else {// si le choix récupéré est ciseaux
                choixIA = 0; // alors IA sort pierre
            }
        }
        listeChoix.add(choixPlayer);
        req.setAttribute("choixIA",choixIA);


        int playerWin;
        // victoire du joueur
        if( choixPlayer == 0 && choixIA == 2 || choixPlayer == 1 && choixIA ==0 || choixPlayer == 2 && choixIA == 1 ){
            playerWin = -1;
        }
        else{
            if( choixIA == 0 && choixPlayer == 2 || choixIA == 1 && choixPlayer ==0 || choixIA == 2 && choixPlayer == 1 ){
                playerWin = 1;
            }
            else{
                playerWin = 0;
            }
        }

        String[] listeSigne = new String[] {
            "pierre","feuille","ciseaux"
        };
        req.setAttribute("playerWin",playerWin);

        req.setAttribute("listeSigne",listeSigne);
        this.getServletContext().getRequestDispatcher("/WEB-INF/result.jsp").forward(req, resp);
    }

    @Override
    public void init() throws ServletException {
      //  super.init();
        listeChoix = new ArrayList<>();
        listeChoix.add(0);
        listeChoix.add(1);
        listeChoix.add(2);

    }
}
