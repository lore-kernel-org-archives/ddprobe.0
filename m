Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3AD28F0
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7053CC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664711453;
	bh=6DebkVAf8stSpndVtcCNBAG7XYfZsZSp3ncaiKGVF4I=;
	h=To:Subject:From:Date:From;
	b=qEtoJozFJdoth5mf5ZLjl5ZUA5DLfagBYfyV4/vSdJ/dddYSnZ1XUXorxfvKZ0qHW
	 PYWjWi9P1nDRetDiqIdbn8mch/kvFSZg1YsO1XGqXZrt8XQcYoRvMDQBtvxj2TiXTv
	 /Ezf3CNDCSVgKW+Kl7YRFjrPwnVXFD+SW3Ecpogrrw+66CzXWTbNlQCghyI9wQ8eqU
	 211iXF4gCH11zVqg0fjOLAeviAE5nHR8l8zmh90XpLPAXhsOiP+TgaQL82YCeXdJGa
	 RsF+hyztB/8cVzRx2mJsHvSdYGsOgDE9mfYxOmlbKLyrZ7toQ3ekWB4TPxM/f/Pbej
	 UAw+7e5e3pKDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FFCC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166471145333.12745.12061288420850673121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17077bd4a1b3c878d3c073ee32aae6bac9f54b11eba270d524be541d2fe518d
Date: Sun, 02 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664711453
