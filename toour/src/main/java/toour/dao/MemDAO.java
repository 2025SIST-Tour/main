package toour.dao;

import org.apache.ibatis.session.SqlSession;
import toour.Factory.FactoryService;
import toour.vo.MemVO;

public class MemDAO {
    public static int addMem(MemVO mvo){
        SqlSession ss = FactoryService.getFactory().openSession();
        int cnt =  ss.insert("member.add",mvo);
        if(cnt>0)
            ss.commit();
        else
            ss.rollback();
        ss.close();

        return cnt;
    }
    public static MemVO getMem(String id){
        SqlSession ss = FactoryService.getFactory().openSession();
        MemVO mvo = ss.selectOne("member.get",id);
        ss.close();
        return mvo;
    }
}
