

class Cart{

  late final  int? id;
  final String? productId;
  final String? productName;
  final String? initialPrice;
  final String? productPrice;
  final String? quanity;
  final String? unitTag;
  final String? image;

  Cart(this.id, this.productId, this.productName, this.initialPrice,
      this.productPrice, this.quanity, this.unitTag, this.image);



Cart.fromMap(Map<dynamic,dynamic> res)
      : id =res['id'],
       productId =res['productId'],
       productName =res['productName'],
       initialPrice =res['initialPrice'],
       productPrice =res['productPrice'],
       quanity =res['quanity'],
       unitTag=res['unitTag'],
       image=res['image'];



      Map<String,Object?> toMap()
      {


        return {
          'id' : id,
          'productId' :productId,
          'productName' :productName,
          'initialPrice': initialPrice,
          'productPrice':productPrice,
          'quanity':quanity,
          'unitTag':unitTag,
          'image':image







        };



      }










}