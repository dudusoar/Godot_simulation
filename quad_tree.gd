extends Node
class_name QuadTree 

const MAX_DEPTH = 5 #最大深度

# 问题部分
# class——name
# 有的参数和函数前面加_是什么意思

# 四叉树里存储的对象类型
class QuadTreeObj extends Node2D:
	pass

var boundary: Rect2 #四叉树管理的区间
var capacity: int #当前节点的存储容量
var objs: Array[QuadTreeObj] # 当前点的存储对象
var depth: int # 当前节点的深度
var divided: bool # 是否分割，未分割是叶子节点
var northeast: QuadTree # 东北节点
var northwest: QuadTree # 西北节点
var southeast: QuadTree # 东南节点
var southwest: QuadTree # 西南节点


# 构造函数
func _init_(_boundary: Rect2, _capacity: int, _depth: int=1):
	boundary = _boundary
	capacity = _capacity
	objs = []
	divided = false
	depth = _depth

# 分割方法
func _subdivide():
	pass

# 插入对象
func insert(obj: QuadTreeObj) -> bool:
	if not boundary.has_point(obj.position):
		return false
	
# 移除对象
func remove(obj):
	pass

# 查询范围的对象
func query(range: Rect2, found_objs: Array):
	pass















	
