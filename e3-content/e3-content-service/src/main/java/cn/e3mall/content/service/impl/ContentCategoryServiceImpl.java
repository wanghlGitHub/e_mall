package cn.e3mall.content.service.impl;

import cn.e3mall.common.pojo.EasyUITreeNode;
import cn.e3mall.common.utils.E3Result;
import cn.e3mall.content.service.ContentCategoryService;
import cn.e3mall.mapper.TbContentCategoryMapper;
import cn.e3mall.pojo.TbContentCategory;
import cn.e3mall.pojo.TbContentCategoryExample;
import cn.e3mall.pojo.TbContentCategoryExample.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 内容分类管理Service
 * <p>Title: ContentCategoryServiceImpl</p>
 * <p>Description: </p>
 * <p>Company: www.itcast.cn</p> 
 * @version 1.0
 */
@Service("contentCategoryService")
public class ContentCategoryServiceImpl implements ContentCategoryService {

	@Autowired
	private TbContentCategoryMapper contentCategoryMapper;

	@Override
	public List<EasyUITreeNode> getContentCatList(long parentId) {
		// 根据parentid查询子节点列表
		TbContentCategoryExample example = new TbContentCategoryExample();
		Criteria criteria = example.createCriteria();
		//设置查询条件
		criteria.andParentIdEqualTo(parentId);
		//执行查询
		List<TbContentCategory> catList = contentCategoryMapper.selectByExample(example);
		//转换成EasyUITreeNode的列表
		List<EasyUITreeNode> nodeList = new ArrayList<>();
		for (TbContentCategory tbContentCategory : catList) {
			EasyUITreeNode node = new EasyUITreeNode();
			node.setId(tbContentCategory.getId());
			node.setText(tbContentCategory.getName());
			node.setState(tbContentCategory.getIsParent()?"closed":"open");
			//添加到列表
			nodeList.add(node);
		}
		return nodeList;
	}

	@Override
	public E3Result addContentCategory(long parentId, String name) {
		//创建一个tb_content_category表对应的pojo对象
		TbContentCategory contentCategory = new TbContentCategory();
		//设置pojo的属性
		contentCategory.setParentId(parentId);
		contentCategory.setName(name);
		//1(正常),2(删除)
		contentCategory.setStatus(1);
		//默认排序就是1
		contentCategory.setSortOrder(1);
		//新添加的节点一定是叶子节点
		contentCategory.setIsParent(false);
		contentCategory.setCreated(new Date());
		contentCategory.setUpdated(new Date());
		//插入到数据库
		contentCategoryMapper.insert(contentCategory);
		//判断父节点的isparent属性。如果不是true改为true
		//根据parentid查询父节点
		TbContentCategory parent = contentCategoryMapper.selectByPrimaryKey(parentId);
		if (!parent.getIsParent()) {
			parent.setIsParent(true);
			//更新到数数据库
			contentCategoryMapper.updateByPrimaryKey(parent);
		}
		//返回结果，返回E3Result，包含pojo
		return E3Result.ok(contentCategory);
	}

	@Override
	public E3Result updateContentCategory(long nodeId, String name) {
		//通过id查询节点对象
		TbContentCategory contentCategory = contentCategoryMapper.selectByPrimaryKey(nodeId);
		//判断新的name值与原来的值是否相同，如果相同则不用更新
		if(name != null && name.equals(contentCategory.getName())){
			return E3Result.ok();
		}
		contentCategory.setName(name);
		//设置更新时间
		contentCategory.setUpdated(new Date());
		//更新数据库
		contentCategoryMapper.updateByPrimaryKey(contentCategory);
		//返回结果
		return E3Result.ok();
	}

	@Override
	public E3Result deleteContentCategory(long nodeId) {
		//删除分类，就是改节点的状态为2
		TbContentCategory contentCategory = contentCategoryMapper.selectByPrimaryKey(nodeId);
		//状态。可选值:1(正常),2(删除)
		contentCategory.setStatus(2);
		contentCategoryMapper.updateByPrimaryKey(contentCategory);
		//我们还需要判断一下要删除的这个节点是否是父节点，如果是父节点，那么就级联
		//删除这个父节点下的所有子节点（采用递归的方式删除）
		if(contentCategory.getIsParent()){
			deleteNode(contentCategory.getId());
		}
		//需要判断父节点当前还有没有子节点，如果有子节点就不用做修改
		//如果父节点没有子节点了，那么要修改父节点的isParent属性为false即变为叶子节点
		TbContentCategory parent = contentCategoryMapper.selectByPrimaryKey(contentCategory.getParentId());
		List<TbContentCategory> list = getContentCategoryListByParentId(parent.getId());
		//判断父节点是否有子节点是判断这个父节点下的所有子节点的状态，如果状态都是2就说明
		//没有子节点了，否则就是有子节点。
		boolean flag = false;
		for(TbContentCategory tbContentCategory : list){
			if(tbContentCategory.getStatus() == 0){
				flag = true;
				break;
			}
		}
		//如果没有子节点了
		if(!flag){
			parent.setIsParent(false);
			contentCategoryMapper.updateByPrimaryKey(parent);
		}
		//返回结果
		return E3Result.ok();

	}

	/**
	 * @Decsription: 通过父节点id来查询所有子节点，这是抽离出来的公共方法
	 * @Param:[parentId]
	 * @Author:heliang.wang
	 * @Date: 2018/8/6下午3:17
	 * @return:java.util.List<cn.e3mall.pojo.TbContentCategory>
	 */
	private List<TbContentCategory> getContentCategoryListByParentId(long parentId){
		TbContentCategoryExample example = new TbContentCategoryExample();
		Criteria criteria = example.createCriteria();
		criteria.andParentIdEqualTo(parentId);
		List<TbContentCategory> list = contentCategoryMapper.selectByExample(example);
		return list;
	}

	/**
	 * @Decsription: 递归删除节点
	 * @Param:[parentId]
	 * @Author:heliang.wang
	 * @Date: 2018/8/6下午3:17
	 * @return:void
	 */
	private void deleteNode(long parentId){
		List<TbContentCategory> list = getContentCategoryListByParentId(parentId);
		for(TbContentCategory contentCategory : list){
			contentCategory.setStatus(2);
			contentCategoryMapper.updateByPrimaryKey(contentCategory);
			if(contentCategory.getIsParent()){
				deleteNode(contentCategory.getId());
			}
		}
	}

}
