package DAO;

import Model.Category;
import Model.Product;
import Model.ProductCart;

import java.sql.*;
import java.util.ArrayList;

public class ProductDAO {
    public static ArrayList<Product> getProductInDb() {
        Connection conn = null;
        ArrayList<Product> productsList = new ArrayList<>();

        try {
            conn = ConnectDB.connectionDB();
            String query = "select * from product";
            Statement stmt = null;
            try {
                PreparedStatement pre = conn.prepareStatement(query);
                ResultSet rs = pre.executeQuery();

                while (rs.next()) {
                    Product product = new Product();
                    product.setProductId(rs.getInt("productId"));
                    product.setCategoryId(rs.getInt("categoryId"));
                    product.setQuantity(rs.getInt("quantity"));
                    product.setPrice(rs.getInt("price"));
                    product.setDescription(rs.getString("description"));
                    product.setProductName(rs.getString("productName"));
                    product.setImgMain(rs.getString("imgMain"));
                    product.setImg1(rs.getString("img1"));
                    product.setImg2(rs.getString("img2"));
                    product.setImg3(rs.getString("img3"));
                    product.setImg4(rs.getString("img4"));
                    product.setSize_S(rs.getInt("Size_S"));
                    product.setSize_M(rs.getInt("Size_M"));
                    product.setSize_L(rs.getInt("Size_L"));
                    product.setSize_XL(rs.getInt("Size_XL"));
                    product.setSize_XXL(rs.getInt("Size_XXL"));
                    productsList.add(product);
                }


//                while (rs.next()) {
//                    String name = rs.getString("username");
//                    System.out.println(name);
//                }
            } catch (SQLException e) {
                throw new Error("Problem", e);
            } finally {
                if (stmt != null) {
                    stmt.close();
                }
            }
        } catch (SQLException e) {
            throw new Error("Problem", e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        return productsList;
    }
    public static ArrayList<Category> loadCategory() {
        Connection conn = null;
        ArrayList<Category> categoryList = new ArrayList<>();

        try {
            conn = DAO.ConnectDB.connectionDB();
            String query = "select * from category";
            Statement stmt = null;
            try {
                PreparedStatement pre = conn.prepareStatement(query);
                ResultSet rs = pre.executeQuery();

                while (rs.next()) {
                    Category categoryModel = new Category();
                    categoryModel.setCategoryId(rs.getInt("categoryId"));
                    categoryModel.setNameCategory(rs.getString("nameCategory"));
                    categoryModel.setImg_Category(rs.getString("Img_Category"));
                    categoryList.add(categoryModel);
                }


//                while (rs.next()) {
//                    String name = rs.getString("username");
//                    System.out.println(name);
//                }
            } catch (SQLException e) {
                throw new Error("Problem", e);
            } finally {
                if (stmt != null) {
                    stmt.close();
                }
            }
        } catch (SQLException e) {
            throw new Error("Problem", e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        return categoryList;
    }
    public static Boolean EditProduct(String ProductId,String categoryId, String quantity,String price, String description, String nameProduct,String imgMain,String img1,String img2,String img3,String img4,String sizeS,String sizeM,String sizeL,String sizeXL,String sizeXXL){
        Connection conn = null;
        boolean isValid = false;
        try {
            conn = DAO.ConnectDB.connectionDB();
            String query = "UPDATE product SET categoryId = ?, quantity= ?, price = ?, description = ?, productName = ?, imgMain = ?,img1 = ?,img2 = ?,img3=?,img4=?,Size_S = ?, Size_M=?, Size_L= ?, Size_XL = ?, Size_XXL=? WHERE productId = ?;";
            Statement stmt = null;
            try {
                PreparedStatement pre = conn.prepareStatement(query);
//                pre.setString(1,categoryId);
                pre.setString(1,categoryId);
                pre.setString(2,quantity);
                pre.setString(3,price);
                pre.setString(4,description);
                pre.setString(5,nameProduct);
                pre.setString(6,imgMain);
                pre.setString(7,img1);
                pre.setString(8,img2);
                pre.setString(9,img3);
                pre.setString(10,img4);
                pre.setString(11,sizeS);
                pre.setString(12,sizeM);
                pre.setString(13,sizeL);
                pre.setString(14,sizeXL);
                pre.setString(15,sizeXXL);
                pre.setString(16,ProductId);

                int rs = pre.executeUpdate();
                if (rs > 0) {
                    isValid = true;
                } else {
                    isValid = false;
                }
//                while (rs.next()) {
//                    String name = rs.getString("username");
//                    System.out.println(name);
//                }
            } catch (SQLException e ) {
                throw new Error("Problem", e);
            } finally {
                if (stmt != null) { stmt.close(); }
            }
        } catch (SQLException e) {
            throw new Error("Problem", e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        return isValid;
    }
    public static Product getProductDetail(String productId) {
        Connection conn = null;
        Product product = new Product();

        try {

            conn = DAO.ConnectDB.connectionDB();
            String query = "select * from product where productId = ?";
            Statement stmt = null;
            try {
                PreparedStatement pre = conn.prepareStatement(query);
                pre.setString(1, productId);
                ResultSet rs = pre.executeQuery();

                while (rs.next()) {
                    product.setProductId(rs.getInt("productId"));
                    product.setCategoryId(rs.getInt("categoryId"));
                    product.setQuantity(rs.getInt("quantity"));
                    product.setPrice(rs.getInt("price"));
                    product.setDescription(rs.getString("description"));
                    product.setProductName(rs.getString("productName"));
                    product.setImgMain(rs.getString("imgMain"));
                    product.setImg1(rs.getString("img1"));
                    product.setImg2(rs.getString("img2"));
                    product.setImg3(rs.getString("img3"));
                    product.setImg4(rs.getString("img4"));
                    product.setSize_S(rs.getInt("Size_S"));
                    product.setSize_M(rs.getInt("Size_M"));
                    product.setSize_L(rs.getInt("Size_L"));
                    product.setSize_XL(rs.getInt("Size_XL"));
                    product.setSize_XXL(rs.getInt("Size_XXL"));
                }


//                while (rs.next()) {
//                    String name = rs.getString("username");
//                    System.out.println(name);
//                }
            } catch (SQLException e) {
                throw new Error("Problem", e);
            } finally {
                if (stmt != null) {
                    stmt.close();
                }
            }
        } catch (SQLException e) {
            throw new Error("Problem", e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        return product;
    }
    public static ProductCart getProductDetailCart(String productId,String Size, int amout) {
        Connection conn = null;
        ProductCart ProductCart = new ProductCart();

        try {

            conn = DAO.ConnectDB.connectionDB();
            String query = "select * from product where productId = ?";
            Statement stmt = null;
            try {
                PreparedStatement pre = conn.prepareStatement(query);
                pre.setString(1, productId);
                ResultSet rs = pre.executeQuery();

                while (rs.next()) {
                    ProductCart.setProductId(rs.getInt("productId"));
                    ProductCart.setCategoryId(rs.getInt("categoryId"));
                    ProductCart.setQuantity(rs.getInt("quantity"));
                    ProductCart.setPrice(rs.getInt("price"));
                    ProductCart.setDescription(rs.getString("description"));
                    ProductCart.setProductName(rs.getString("productName"));
                    ProductCart.setImgMain(rs.getString("imgMain"));
                    ProductCart.setSizeSelect(Size);
                    ProductCart.setAmoutSelect(amout);

                }


//                while (rs.next()) {
//                    String name = rs.getString("username");
//                    System.out.println(name);
//                }
            } catch (SQLException e) {
                throw new Error("Problem", e);
            } finally {
                if (stmt != null) {
                    stmt.close();
                }
            }
        } catch (SQLException e) {
            throw new Error("Problem", e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        return ProductCart;
    }
    public static ArrayList<Product> getProductByCate(String idCategory) {
        Connection conn = null;
        ArrayList<Product> productsList = new ArrayList<>();

        try {
            conn = DAO.ConnectDB.connectionDB();
            String query = "select * from product where categoryId = ?";
            Statement stmt = null;
            try {
                PreparedStatement pre = conn.prepareStatement(query);
                pre.setString(1, idCategory);
                ResultSet rs = pre.executeQuery();

                while (rs.next()) {
                    Product product = new Product();
                    product.setProductId(rs.getInt("productId"));
                    product.setCategoryId(rs.getInt("categoryId"));
                    product.setQuantity(rs.getInt("quantity"));
                    product.setPrice(rs.getInt("price"));
                    product.setDescription(rs.getString("description"));
                    product.setProductName(rs.getString("productName"));
                    product.setImgMain(rs.getString("imgMain"));
                    product.setImg1(rs.getString("img1"));
                    product.setImg2(rs.getString("img2"));
                    product.setImg3(rs.getString("img3"));
                    product.setImg4(rs.getString("img4"));
                    product.setSize_S(rs.getInt("Size_S"));
                    product.setSize_M(rs.getInt("Size_M"));
                    product.setSize_L(rs.getInt("Size_L"));
                    product.setSize_XL(rs.getInt("Size_XL"));
                    product.setSize_XXL(rs.getInt("Size_XXL"));
                    productsList.add(product);
                }


//                while (rs.next()) {
//                    String name = rs.getString("username");
//                    System.out.println(name);
//                }
            } catch (SQLException e) {
                throw new Error("Problem", e);
            } finally {
                if (stmt != null) {
                    stmt.close();
                }
            }
        } catch (SQLException e) {
            throw new Error("Problem", e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        return productsList;
    }
    public static ArrayList<Product> findProduct(String keyWord) {
        Connection conn = null;
        ArrayList<Product> productsList = new ArrayList<>();

        try {
            conn = DAO.ConnectDB.connectionDB();
            String query = "SELECT * FROM product WHERE productName LIKE ?";
            Statement stmt = null;
            try {
                PreparedStatement pre = conn.prepareStatement(query);
                pre.setString(1, keyWord);
                ResultSet rs = pre.executeQuery();

                while (rs.next()) {
                    Product product = new Product();
                    product.setProductId(rs.getInt("productId"));
                    product.setCategoryId(rs.getInt("categoryId"));
                    product.setQuantity(rs.getInt("quantity"));
                    product.setPrice(rs.getInt("price"));
                    product.setDescription(rs.getString("description"));
                    product.setProductName(rs.getString("productName"));
                    product.setImgMain(rs.getString("imgMain"));
                    product.setImg1(rs.getString("img1"));
                    product.setImg2(rs.getString("img2"));
                    product.setImg3(rs.getString("img3"));
                    product.setImg4(rs.getString("img4"));
                    product.setSize_S(rs.getInt("Size_S"));
                    product.setSize_M(rs.getInt("Size_M"));
                    product.setSize_L(rs.getInt("Size_L"));
                    product.setSize_XL(rs.getInt("Size_XL"));
                    product.setSize_XXL(rs.getInt("Size_XXL"));
                    productsList.add(product);
                }


//                while (rs.next()) {
//                    String name = rs.getString("username");
//                    System.out.println(name);
//                }
            } catch (SQLException e) {
                throw new Error("Problem", e);
            } finally {
                if (stmt != null) {
                    stmt.close();
                }
            }
        } catch (SQLException e) {
            throw new Error("Problem", e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        return productsList;
    }
    public static Boolean addNewProduct(String categoryId, String quantity,String price, String description, String nameProduct,String imgMain,String img1,String img2,String img3,String img4,String sizeS,String sizeM,String sizeL,String sizeXL,String sizeXXL){
        Connection conn = null;
        boolean isValid = false;
        try {

            conn = DAO.ConnectDB.connectionDB();
            String query = "insert into product(categoryId, quantity, price, description, productName, imgMain, img1, img2, img3, img4, Size_S, Size_M, Size_L, Size_XL, Size_XXL) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            Statement stmt = null;
            try {
                PreparedStatement pre = conn.prepareStatement(query);
//                pre.setString(1,categoryId);
                pre.setString(1,categoryId);
                pre.setString(2,quantity);
                pre.setString(3,price);
                pre.setString(4,description);
                pre.setString(5,nameProduct);
                pre.setString(6,imgMain);
                pre.setString(7,img1);
                pre.setString(8,img2);
                pre.setString(9,img3);
                pre.setString(10,img4);
                pre.setString(11,sizeS);
                pre.setString(12,sizeM);
                pre.setString(13,sizeL);
                pre.setString(14,sizeXL);
                pre.setString(15,sizeXXL);

                int rs = pre.executeUpdate();
                if (rs > 0) {
                    isValid = true;
                } else {
                    isValid = false;
                }
//                while (rs.next()) {
//                    String name = rs.getString("username");
//                    System.out.println(name);
//                }
            } catch (SQLException e ) {
                throw new Error("Problem", e);
            } finally {
                if (stmt != null) { stmt.close(); }
            }
        } catch (SQLException e) {
            throw new Error("Problem", e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        return isValid;
    }
    public static ArrayList<Product> deleteProduct(int ProductId) {
        Connection conn = null;
        ArrayList<Product> productsList = new ArrayList<>();

        try {

            conn = DAO.ConnectDB.connectionDB();
            String query = "DELETE FROM product WHERE productId = ?;";
            Statement stmt = null;
            try {
                PreparedStatement pre = conn.prepareStatement(query);
                pre.setInt(1, ProductId);
                int rs = pre.executeUpdate();

//                while (rs.next()) {
//                    Product product = new Product();
//                    product.setProductId(rs.getInt("productId"));
//                    product.setCategoryId(rs.getInt("categoryId"));
//                    product.setQuantity(rs.getInt("quantity"));
//                    product.setPrice(rs.getInt("price"));
//                    product.setDescription(rs.getString("description"));
//                    product.setNameProduct(rs.getString("nameProduc"));
//                    product.setImgMain(rs.getString("imgMain"));
//                    product.setImg1(rs.getString("img1"));
//                    product.setImg2(rs.getString("img2"));
//                    product.setImg3(rs.getString("img3"));
//                    product.setImg4(rs.getString("img4"));
//                    product.setSize_S(rs.getInt("Size_S"));
//                    product.setSize_M(rs.getInt("Size_M"));
//                    product.setSize_L(rs.getInt("Size_L"));
//                    product.setSize_XL(rs.getInt("Size_XL"));
//                    product.setSize_XXL(rs.getInt("Size_XXL"));
//                    productsList.add(product);
//                }


//                while (rs.next()) {
//                    String name = rs.getString("username");
//                    System.out.println(name);
//                }
            } catch (SQLException e) {
                throw new Error("Problem", e);
            } finally {
                if (stmt != null) {
                    stmt.close();
                }
            }
        } catch (SQLException e) {
            throw new Error("Problem", e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        return productsList;
    }
}
