package cn.nenu.util;


/**  

* <p>Title: PageUtil</p>  

* <p>Description: </p>  

* @author jianjunfan

* @date 2020年5月11日 
* 
* @Properties int currentPage  当前页码（当前是第几页）
			  int startNum  mysql进行查询数据时的起始索引参数，也就是从哪条开始查询数据
			  int pageNum  总页数
			  int prePage  上一页的页码数
		      int nextPage  下一页的页码数

*/ 
public class PageUtil {
	private int currentPage;
	private int startNum;
	private int pageNum;
	private int prePage;
	private int nextPage;

	public PageUtil() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PageUtil(int currentPage, int startNum, int pageNum, int prePage, int nextPage) {
		super();
		this.currentPage = currentPage;
		this.startNum = startNum;
		this.pageNum = pageNum;
		this.prePage = prePage;
		this.nextPage = nextPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPrePage() {
		return prePage;
	}

	public void setPrePage(int prePage) {
		this.prePage = prePage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	
	
	public static PageUtil dividePage(String currentPageStr, int sumCount, int everyPageNum) {
		/*
		 * Paramters：String currentPageStr 字符串类型的当前页，因为从前端得到的一般为String类型；
		 *           int sumCount 数据总条数，一般从数据库查到的数据总条数
		 *           int everyPageNum 每页要显示的数据条数
		 * 
		 * Return: PageUtil Object 
		 * 
		 * 注：其中返回的上一页和下一页均做过处理，避免到-1页或者超出总页码数，直接使用即可
		 * 
		 * */
		PageUtil pu = new PageUtil();

		if (currentPageStr == null) {
			currentPageStr = "1";
		}

		int currentPage = Integer.parseInt(currentPageStr);

		// 查询的开始数
		int startNum = (currentPage - 1) * everyPageNum;
		// 总页数
		int pageNum = sumCount % everyPageNum == 0 ? sumCount / everyPageNum : sumCount / everyPageNum + 1;
		// 前一页
		int prePage = 1;
		if (currentPage > 1) {
			prePage = currentPage - 1;
		}
		// 下一页
		int nextPage = pageNum;
		if (currentPage < pageNum) {
			nextPage = currentPage + 1;
		}
		
		pu.setCurrentPage(currentPage);
		pu.setPrePage(prePage);
		pu.setNextPage(nextPage);
		pu.setStartNum(startNum);
		pu.setPageNum(pageNum);;
		return pu;
	}

}
