package filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@WebFilter(urlPatterns = { "/main/*" })
public class FilterAuth implements Filter {

	public FilterAuth() {
	}

	/* Encerra o processos quando o servidor é parado */
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		String usuarioLogado = (String) session.getAttribute("usuario");
		String urlAuth = req.getServletPath();

		/* Validar se está logado */
		if (usuarioLogado == null && !urlAuth.equalsIgnoreCase("/main/ServletLogin")) {

			RequestDispatcher redireciona = request.getRequestDispatcher("/index.jsp?url = " + urlAuth);
			request.setAttribute("msg", "Por favor realize o login!");
			redireciona.forward(request, response);
			return;
		} else {
			chain.doFilter(request, response);
		}

	}

	/* Executado quando inicia o sistema */
	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
