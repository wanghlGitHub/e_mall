package cn.e3mall.pagehelper;

import cn.e3mall.mapper.TbItemMapper;
import cn.e3mall.pojo.TbItemExample;
import com.github.pagehelper.PageHelper;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PageHelperTest {

	@Test
	public void testPageHelper() throws Exception {
		//初始化spring容器
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
		//从容器中获得Mapper代理对象
		TbItemMapper itemMapper = applicationContext.getBean(TbItemMapper.class);
		//执行sql语句之前设置分页信息使用PageHelper的startPage方法。
		PageHelper.startPage(1, 10);
		//执行查询
		TbItemExample example = new TbItemExample();
		try{
			String str = itemMapper.select1();
			System.out.println(str);


//			List<TbItem> list = itemMapper.selectByExample(example);
//			//取分页信息，PageInfo。1、总记录数2、总页数 。当前页码
//			PageInfo<TbItem> pageInfo = new PageInfo<>(list);
//			System.out.println(pageInfo.getTotal());
//			System.out.println(pageInfo.getPages());
//			System.out.println(list.size());
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
