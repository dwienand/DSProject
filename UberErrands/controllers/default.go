package controllers

import (
	"strconv"
	"DSProject/UberErrands/models"
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"github.com/astaxie/beego/validation"
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
	
	service := c.Data["Service"].(string)
        latitudestr := c.Data["Latitude"].(string)
        latitude, err := strconv.ParseFloat(latitudestr,64)
        longitudestr := c.Data["Longitude"].(string)
        longitude, err := strconv.ParseFloat(longitudestr,64)

	o := orm.NewOrm()
	var user string
	err = o.Raw("select username from provider where service=?",service).QueryRow(&user)
	fmt.Println("user: ", user, latitude, longitude, err)

	
	
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
	c.Data["Available"] = true

	username := c.Data["Username"].(string)
	service := c.Data["Service"].(string)
	latitudestr := c.Data["Latitude"].(string)
	latitude, err := strconv.ParseFloat(latitudestr,64)
	longitudestr := c.Data["Longitude"].(string)
	longitude, err := strconv.ParseFloat(longitudestr,64)
	avail := c.Data["Available"].(bool)
	fmt.Println(username)
        test := models.Provider{Username: username, Service: service, Lat: latitude, Long: longitude, Available: avail}

        valid := validation.Validation{}
        b, err := valid.Valid(&test)
        if err != nil {
        }
        if !b {
                for _, err := range valid.Errors {
                        fmt.Println(err.Key, err.Message)
                }
        } else {

                o := orm.NewOrm()
                o.Using("default")
                provider := models.Provider{Username: username, Service: service, Lat: latitude, Long: longitude, Available: avail}
                fmt.Printf(provider.Username)
                //id, err := o.Insert(&provider)
               // fmt.Printf("ID: %d, ERR: %v\n", id, err)
               // this.Redirect("/", 302)
		o.Insert(&provider)

	}



        c.TplNames = "AddSubmitted.tpl"
}
