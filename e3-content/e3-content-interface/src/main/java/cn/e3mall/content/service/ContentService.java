package cn.e3mall.content.service;

import cn.e3mall.common.pojo.EasyUIDataGridResult;
import cn.e3mall.common.utils.E3Result;
import cn.e3mall.pojo.TbContent;

import java.util.List;

public interface ContentService {

    EasyUIDataGridResult getContentList(long categoryId, int page, int rows);
    E3Result addContent(TbContent content);
    List<TbContent> getContentListByCid(long cid);
    //修改内容
    E3Result updateContent(TbContent content);
    //删除内容
    E3Result deleteContent(String ids);
    //获取单个内容信息
    E3Result getContent(long id);
}
