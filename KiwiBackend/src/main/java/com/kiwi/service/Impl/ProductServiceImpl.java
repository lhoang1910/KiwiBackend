package com.kiwi.service.Impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.kiwi.dto.request.CreateProductRequest;
import com.kiwi.entities.Category;
import com.kiwi.entities.Image;
import com.kiwi.entities.Product;
import com.kiwi.exception.NotFoundException;
import com.kiwi.repository.CategoryRepository;
import com.kiwi.repository.ImageRepository;
import com.kiwi.repository.ProductRepository;
import com.kiwi.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository productRepository;

	@Autowired
	CategoryRepository categoryRepository;

	@Autowired
	ImageRepository imageRepository;

	@Override
	public List<Product> getList() {
		// TODO Auto-generated method stub
		return productRepository.findAll(Sort.by("id").descending());
	}

	// tra ve danh sach san pham moi nhat
	@Override
	public List<Product> getListNewst(int number) {
		// TODO Auto-generated method stub
		return productRepository.getListNewest(number);
	}

	// tra ve danh sach san pham theo gia
	@Override
	public List<Product> getListByPrice() {
		// TODO Auto-generated method stub
		return productRepository.getListByPrice();
	}

	// tra ve danh sach san pham lien quan
	@Override
	public List<Product> findRelatedProduct(long id) {
		// TODO Auto-generated method stub
		List<Product> products = productRepository.findRelatedProduct(id);
		return products;
	}

	// tra ve danh sach san pham theo danh muc
	@Override
	public List<Product> getListProductByCategory(long id) {
		// TODO Auto-generated method stub
		List<Product> products = productRepository.getListProductByCategory(id);
		return products;
	}

	// tra ve danh sach san pham theo muc gia
	@Override
	public List<Product> getListByPriceRange(long id, int min, int max) {
		// TODO Auto-generated method stub
		List<Product> list = productRepository.getListProductByPriceRange(id, min, max);
		return list;
	}

	// tim kiem san pham
	@Override
	public List<Product> searchProduct(String keyword) {
		// TODO Auto-generated method stub
		List<Product> list = productRepository.searchProduct(keyword);
		return list;
	}

	// lay san pham theo id
	@Override
	public Product getProduct(long id) {
		// TODO Auto-generated method stub
		Product product = productRepository.findById(id)
				.orElseThrow(() -> new NotFoundException("Not Found Product With Id: " + id));

		return product;
	}

	// tao san pham
	@Override
	public Product createProduct(CreateProductRequest request) {
		// TODO Auto-generated method stub
		Product product = new Product();
		product.setName(request.getName());
		product.setDescription(request.getDescription());
		product.setPrice(request.getPrice());
		product.setQuantity(request.getQuantity());
		Category category = categoryRepository.findById(request.getCategoryId())
				.orElseThrow(() -> new NotFoundException("Not Found Category With Id: " + request.getCategoryId()));
		product.setCategory(category);

		Set<Image> images = new HashSet<>();
		for (long imageId : request.getImageIds()) {
			Image image = imageRepository.findById(imageId)
					.orElseThrow(() -> new NotFoundException("Not Found Image With Id: " + imageId));
			images.add(image);
		}
		product.setImages(images);
		productRepository.save(product);
		return product;
	}

	// sua san pham
	@Override
	public Product updateProduct(long id, CreateProductRequest request) {
		// TODO Auto-generated method stub
		Product product = productRepository.findById(id)
				.orElseThrow(() -> new NotFoundException("Not Found Product With Id: " + id));
		product.setName(request.getName());
		product.setDescription(request.getDescription());
		product.setPrice(request.getPrice());
		product.setQuantity(request.getQuantity());
		Category category = categoryRepository.findById(request.getCategoryId())
				.orElseThrow(() -> new NotFoundException("Not Found Category With Id: " + request.getCategoryId()));
		product.setCategory(category);

		Set<Image> images = new HashSet<>();
		for (long imageId : request.getImageIds()) {
			Image image = imageRepository.findById(imageId)
					.orElseThrow(() -> new NotFoundException("Not Found Image With Id: " + imageId));
			images.add(image);
		}
		product.setImages(images);
		productRepository.save(product);

		return product;
	}

	// xoa san pham
	@Override
	public void deleteProduct(long id) {
		// TODO Auto-generated method stub
		Product product = productRepository.findById(id)
				.orElseThrow(() -> new NotFoundException("Not Found Product With Id: " + id));
		product.getImages().remove(this);
		productRepository.delete(product);
	}

}
