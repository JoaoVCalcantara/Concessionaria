package br.com.lux.servlet;

import br.com.lux.dao.CarDao;
import br.com.lux.model.Car;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.apache.commons.fileupload.servlet.ServletFileUpload.isMultipartContent;

@WebServlet("/create-car")
public class CreateCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Map<String, String> parameters = null;
        try {
            parameters = uploadImage(req);
        } catch (FileUploadException e) {
            throw new RuntimeException(e);
        }

        String carId = parameters.get("id");
        String carName = parameters.get("car-name");
        String carMotor = parameters.get("motor");
        String carCil = parameters.get("cil");
        String carAcel = parameters.get("acel");
        String carHp = parameters.get("hp");
        String carTorque = parameters.get("torque");
        String carSpeed = parameters.get("speed");
        String carDoors = parameters.get("doors");
        String carSeats = parameters.get("seats");
        String carVal = parameters.get("val");
        String carPrice = parameters.get("price");
        String carLink = parameters.get("image");
        String carTitle = parameters.get("title");
        String carPage = parameters.get("page");

        CarDao carDao = new CarDao();
        Car car = new Car(carId, carName, carMotor, carCil, carAcel, carHp, carTorque, carSpeed, carDoors, carSeats, carVal, carPrice, carLink, carTitle, carPage);

        if (null == carId || carId.isBlank()) {
            carDao.saveOrUpdate(car);
        } else {
            carDao.saveOrUpdate(car);
        }
        resp.sendRedirect("/admin.jsp");
    }
    private Map<String, String> uploadImage(HttpServletRequest httpServletRequest) throws FileUploadException {
        HashMap<String, String> parameters = new HashMap<>();

        if(isMultipartContent(httpServletRequest)) {
            try {

                DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
                List<FileItem> fileItems = new ServletFileUpload(diskFileItemFactory).parseRequest(httpServletRequest);

                for(FileItem item: fileItems){
                    checkFieldType(item, parameters);
                }

        } catch (Exception e){
                parameters.put("image", "img/default-car.jpg");

            }
            return parameters;

        }
        return parameters;
    }
    private void checkFieldType(FileItem fileItem, Map requests) throws Exception {

        if(fileItem.isFormField()) {
            requests.put(fileItem.getFieldName(), fileItem.getString());
        } else {
            String fileName = processUploadFile(fileItem);
            requests.put("image", fileName);
        }
    }
    private String processUploadFile(FileItem fileItem) throws Exception {
        Long currentTime = new Date().getTime();
        String fileName = currentTime.toString().concat("-").concat(fileItem.getName().replace(" ", ""));
        String filePath = this.getServletContext().getRealPath("img").concat(File.separator).concat(fileName);
        fileItem.write(new File(filePath));

        return fileName;
    }
}