package yncrea.lab04.web.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import yncrea.lab04.core.entity.Company;
import yncrea.lab04.core.service.CompanyService;

import java.util.List;

@Controller
public class CompanyController {

    public CompanyService companyService;

    private final static Logger LOGGER = LoggerFactory.getLogger(CompanyController.class);

    public CompanyController(CompanyService companyService) {
        this.companyService = companyService ;
    }

    @RequestMapping(path = "/list")
    public String getListOfCompanies(ModelMap modelMap){
        List<Company> companiesList = companyService.findAllWithProjects();
        modelMap.addAttribute("companies", companiesList);
        LOGGER.info("Recolte de la liste Entreprise.");
        LOGGER.debug("Affichage de la liste Entreprise.");
        return "companiesList";
    }

    @RequestMapping(path = "{id}/delete")
    public String deleteCompany(@PathVariable Long id){
        companyService.deleteById(id);
        LOGGER.warn("Suppression de l'entreprise id = " + id);
        return "redirect:/list";
    }
}
