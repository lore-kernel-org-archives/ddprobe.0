Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4136AC0
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 14:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F41E6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 14:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679064066;
	bh=ZBfSMD1iGE+F7fWTjDem4Z/HnvR3+C1Jb4c2qUMCX5M=;
	h=To:Subject:From:Date:From;
	b=Y6Zsz1Db3rFnCUkQGh9QLiTQQIVKspP2ZxaIsfUcc5HOfBGcC/dggJJk/plhccvrL
	 w3UbZsJObBi/9ePiJG8NJKRMSNBEDgVcAuhVRJ4cyH71RTOmAQejz1maAlcqVXXS8Z
	 ZHzTKSxlg1PFC+ElEWIMUx/nk0C0foYocM9WxdwewD6ug3duka9lq9NQa/sb9v3BD8
	 f/VwUOEUFbzEPEhL3aYIBH0JYoArmMVnerGhqHZxyYiFzeC8jlG7+45lEpN27M3j/C
	 ejOLX6C+gsGxB6uoOVYpUjTWMTzwKotZjrwLF/IJIkWa2MNGNpoXPXilcNqu58d8Ae
	 ofhthnLq5yMSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2BD8C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 14:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167906406584.25986.11840873412716063090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d013e2d95334fbaefb381de648d45974521724021635be50d8069464e69ad4
Date: Fri, 17 Mar 2023 14:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679064065
