package controllers

import (
	"github.com/astaxie/beego"
	_ "github.com/go-sql-driver/mysql" // import your used driver
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.TplNames = "index.tpl"
}

//InitiateRequestController
type InitiateRequestController struct {
	beego.Controller
}

func (c *InitiateRequestController) Get() {
	c.TplNames = "InitialRequestor.tpl"
}

//InitiateProvideController
type InitiateProvideController struct {
	beego.Controller
}

func (c *InitiateProvideController) Get() {
	c.TplNames = "InitialProvider.tpl"
}

//SubmitRequestController
type SubmitRequestController struct {
	beego.Controller
}

func (c *SubmitRequestController) Post() {
	c.Data["Service"] = c.GetString("Service")
	c.Data["Latitude"] = c.Input().Get("Latitude")
	c.Data["Longitude"] = c.Input().Get("Longitude")
	c.TplNames = "RequestSubmitted.tpl"
}

//AddRequestController
type AddRequestController struct {
        beego.Controller
}

func (c *AddRequestController) Post() {
	c.Data["Username"] = c.GetString("Username")
        c.Data["Service"] = c.GetString("Service")
        c.Data["Latitude"] = c.Input().Get("Latitude")
        c.Data["Longitude"] = c.Input().Get("Longitude")
        c.TplNames = "AddSubmitted.tpl"
}
