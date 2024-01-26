package net.sedwinj.wishlister.controller;

import net.sedwinj.wishlister.model.ListDataDTO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/list")
public class ListController {
    @GetMapping("/{listId}")
    public ResponseEntity<ListDataDTO> getListData(@PathVariable Integer listId) {
        return new ResponseEntity<>(new ListDataDTO(), HttpStatus.OK);
    }
}
