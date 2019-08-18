package cn.e3mall.controller;

import cn.e3mall.common.pojo.EasyUIDataGridResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.e3mall.common.utils.E3Result;
import cn.e3mall.content.service.ContentService;
import cn.e3mall.pojo.TbContent;

/**
 * 内容管理Controller
 * <p>Title: ContentController</p>
 * <p>Description: </p>
 * <p>Company: www.itcast.cn</p> 
 * @version 1.0
 */
@Controller
public class ContentController {

	@Autowired
	private ContentService contentService;

	@RequestMapping("/content/query/list")
	@ResponseBody
	public EasyUIDataGridResult getContentList(Long categoryId, Integer page, Integer rows) {
		EasyUIDataGridResult result = contentService.getContentList(categoryId, page, rows);
		return result;
	}

	@RequestMapping(value = "/content/save", method = RequestMethod.POST)
	@ResponseBody
	public E3Result addContent(TbContent content) {
		//调用服务把内容数据保存到数据库
		E3Result e3Result = contentService.addContent(content);
		return e3Result;
	}

	@RequestMapping("/content/getContent")
	@ResponseBody
	public E3Result getContent(Long id) {
		E3Result result = contentService.getContent(id);
		return result;
	}

	@RequestMapping("/rest/content/edit")
	@ResponseBody
	public E3Result updateContent(TbContent content) {
		E3Result result = contentService.updateContent(content);
		return result;
	}

	@RequestMapping("/content/delete")
	@ResponseBody
	public E3Result deleteContent(String ids) {
		E3Result result = contentService.deleteContent(ids);
		return result;
	}
}
