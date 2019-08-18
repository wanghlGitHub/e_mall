package cn.e3mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import cn.e3mall.common.pojo.EasyUIDataGridResult;
import cn.e3mall.common.utils.E3Result;
import cn.e3mall.pojo.TbItem;
import cn.e3mall.service.ItemService;

import java.util.Map;

/**
 * 商品管理Controller
 * <p>Title: ItemController</p>
 * <p>Description: </p>
 * <p>Company: www.itcast.cn</p> 
 * @version 1.0
 */
@Controller
public class ItemController {

	@Autowired
	private ItemService itemService;
	
	@RequestMapping("/item/{itemId}")
	@ResponseBody
	public TbItem getItemById(@PathVariable Long itemId) {
		TbItem tbItem = itemService.getItemById(itemId);
		return tbItem;
	}
	
	@RequestMapping("/item/list")
	@ResponseBody
	public EasyUIDataGridResult getItemList(Integer page, Integer rows) {
		//调用服务查询商品列表
		EasyUIDataGridResult result = itemService.getItemList(page, rows);
		return result;
	}
	
	/**
	 * 商品添加功能
	 */
	@RequestMapping(value="/item/save", method=RequestMethod.POST)
	@ResponseBody
	public E3Result addItem(TbItem item, String desc) {
		E3Result result = itemService.addItem(item, desc);
		return result;
	}

	/**
	 * 商品修改功能
	 */
	@RequestMapping(value="/rest/item/update", method=RequestMethod.POST)
	@ResponseBody
	public E3Result updateItem(TbItem item, String desc) {
		E3Result result = itemService.updateItem(item, desc);
		return result;
	}

	/**
	 * @Decsription: 更新商品状态    状态：1-正常，2-下架，3-删除，4-上架
	 * @Param:[ids]
	 * @Author:heliang.wang
	 * @Date: 2018/8/5下午4:50
	 * @return:cn.e3mall.common.utils.E3Result
	 */
	@RequestMapping(value="/rest/item/updateState", method=RequestMethod.POST)
	@ResponseBody
	public E3Result deleteItem(@RequestParam Map<String,String> map) {
		String ids = map.get("ids");
		int state = Integer.valueOf(map.get("state"));
		E3Result result = itemService.deleteItem(ids,state);
		return result;
	}

}
