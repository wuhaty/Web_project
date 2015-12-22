package myInterceptor;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7331411931180287601L;

	@Override
	protected String doIntercept(ActionInvocation invoker) throws Exception {
		// TODO Auto-generated method stub
		Object loginUserName = ActionContext.getContext().getSession().get("userName"); 
		if(null == loginUserName){  
            return "login";  // 这里返回用户登录页面视图  
        }
		return invoker.invoke();
	}
	
}
