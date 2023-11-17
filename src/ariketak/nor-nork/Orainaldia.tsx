import {FormEvent, FormEventHandler, useState} from "react";

const esaldi:{esaldia: string, errantzuna:string, nor:string, nork:string}[] = [
    {
        esaldia: "Ikusi $.",
        nor: "Zu",
        nork: "Nik",
        errantzuna: "zaitut"
    },
    {
        esaldia: "Erosi $.",
        nor: "Haiek",
        nork: "Guk",
        errantzuna: "ditugu"
    }

]
export default function Orainaldia() {

    const [count, setCount] = useState(0);

    const next = () => {
        if(count === esaldi.length - 1) {
            setCount(0);
            return;
        }
        else {
            setCount(count + 1);
        }
    }

    function verify(e: React.SyntheticEvent) {
        e.preventDefault();
        const target = e.target as typeof e.target & {
            errantzuna: { value: string };
        };
        const errantzuna = target.errantzuna.value; // typechecks!
        // alert(errantzuna === esaldi[count].errantzuna ? "Oso ondo!" : "Txarto!");
        const response = document.getElementById("response");
        if(response) {
            if(errantzuna === esaldi[count].errantzuna) {
                response.style.display = "block";
                response.style.color = "green";
                response.innerHTML = esaldi[count].errantzuna;
            }
            else {
                response.style.display = "block";
                response.style.color = "red";
                response.innerHTML = esaldi[count].errantzuna;
            }
        }
    }

    return (
        <div className="Orainaldia">

            <span>{esaldi[count].esaldia}</span>
            <br/>
            <span>({esaldi[count].nork},</span>
            <span>{esaldi[count].nor})</span>
            <br/>
            <form onSubmit={verify}>
                <input type="text" name="errantzuna" />
                <button type="submit">Errantzun</button>
                <br/>
            </form>
            <div id="response" style={
                {
                    display: "none",
                }
            }>{esaldi[count].errantzuna}</div>
        </div>
    );
}
