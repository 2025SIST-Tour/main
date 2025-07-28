package toour.action;

import toour.dao.MemDAO;
import toour.vo.MemVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class chkIdAction implements Action{
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String u_id =request.getParameter("u_id");
        boolean usable = true;
        if(u_id !=null){
            MemVO mvo =MemDAO.getMem(u_id);
            if(mvo!=null){
                // 중복 id가 있으으로 사용 불가능
                usable = false;
            }
        }
        request.setAttribute("usable",usable);
        return "chkId.jsp";
    }
}
