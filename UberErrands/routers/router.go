package routers

import (
	"DSProject/UberErrands/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/initiateRequest", &controllers.InitiateRequestController{})
	beego.Router("/initiateProvide", &controllers.InitiateProvideController{})
	beego.Router("submitRequest", &controllers.SubmitRequestController{})

}
