import styles from './Triagem.module.css'
import { useState, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import ScrollTop from '../../../components/ScrollTop';
import axios from '../../../api/axios'
import toast, { Toaster } from 'react-hot-toast';

function Triage() {

    const [profileData, setProfileData] = useState({
        name: '',
        specialty: '',
        email: ''
    });

    const fetchProfileData = async () => {
        const userId = localStorage.getItem('userId');
        if (!userId) {
            console.error("%cUsuário não está logado.", 'color: #cc0000; background-color: #140000');
            return;
        }

        try {
            const response = await axios.get(`http://localhost:3003/full-profile/${userId}`);
            setProfileData(response.data);
            toast.success("Dados carregados!", {
                position: 'top-right',
                style: {
                    background: '#001908',
                    color: '#F7F6FB',
                    width: '230px',
                    height: '50px',
                    fontSize: '16px',
                    borderLeft: '5px solid #00ff52',
                }
            });
            console.log("%cDados carregados!", 'color: #00ff52; background-color: #001908');
        } catch (error) {
            console.error('Erro ao buscar dados do perfil:', error);
            toast.error("Erro ao buscar dados do perfil. Tente novamente mais tarde.", {
                position: 'top-right !important',
                style: {
                    background: '#140000',
                    color: '#F7F6FB',
                    width: '350px',
                    height: '50px',
                    fontSize: '16px',
                    borderLeft: '5px solid #cc0000',
                }

            });
            console.log("%cErro ao buscar dados do perfil. Tente novamente mais tarde.", 'color: #cc0000; background-color: #140000');
        }
    };

    useEffect(() => {
        fetchProfileData();
    }, []);

    return (
        <>
            <ScrollTop />
            {/* <h1 className={styles.triage_title}>Eu sou a Triage!</h1> */}

            <div className={styles.profile}>
                {/* <div className={styles.upload}>
                    <div className={styles.profileHeader}>
                        <img src="src/assets/ana_p.png" alt="profile" className={styles.profileImg} />
                        <div className={styles.round}>
                            <input type="file" />
                            <i className="fa-solid fa-camera"></i>
                        </div>
                    </div>

                    <br />
                    <div className={styles.profileTextContainer}>
                        <h1 className={styles.profileTitle}>Ana Albani</h1>
                        <p className={styles.profileExpert}>(Psicólogo)</p>
                        <p className={styles.profileEmail}>anaoficial@gmail.com</p>
                    </div>
                </div> */}

                {/* <div className={styles.menu}>
                    <Link className={styles.menuLink} to="/"><i class="fa-solid fa-user" id={styles.menuIcon} ></i>Conta</Link>
                    <Link className={styles.menuLink} to="/"><i class="fa-solid fa-bell" id={styles.menuIco}></i> Notificações</Link>
                    <Link className={styles.menuLink} to="/"><i class="fa-solid fa-gear" id={styles.menuIco}></i>Configurações</Link>
                    <Link className={styles.menuLink} to="/"><i class="fa-solid fa-right-from-bracket" id={styles.menuIco}></i>Logout</Link>
                </div> */}
            </div>

            <div className={styles.profile}>
                <div className={styles.upload}>
                    {/* <div className={styles.profileHeader}>
                        <div className={styles.round}>
                            <input type="file" onChange={handleFileChange} />
                            <i className="fa-solid fa-camera" onClick={handleUpload}></i>
                        </div>
                    </div> */}
                    <br />
                    <div className={styles.profileTextContainer}>
                        {/* {profileData.image && (
                            <div className={styles.profileImageContainer}>
                                <img src={profileData.image} alt={profileData.name} className={styles.profileImage} />
                            </div>
                        )} */}
                        <h1 className={styles.profileTitle}>{profileData.name}</h1>
                        <p className={styles.profileEmail}>{profileData.specialty}</p>
                        <p className={styles.profileEmail}>{profileData.email}</p>
                    </div>
                </div>
            </div>

        </>
    )
}

export default Triage