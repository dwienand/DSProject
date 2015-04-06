package controllers

import (
	"github.com/astaxie/beego"
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
	c.TplNames = "asd.html"
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
