Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA75C15A8
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BFDC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671676287;
	bh=RAGSfAlNi3mtxP3ACn7tU9BuHc4yeUpZ8IFdJBLnJmM=;
	h=To:Subject:From:Date:From;
	b=pwvGUsFoNz/LwP5pmLc8AunFuHSWUMub3yQwA33XdUCBxDQso3710zieEvpn/xXAA
	 sug2GVX7tes56MtRZTWIKuQV6Nt2UEvzVh3Q9Mw+q8i1ls30PEcx9LGM5mTzI3aLBP
	 l9tfDXsdQhElM8XXF+W2PkLmD8B6O18PS4AbCej6RD9W7HYEY3cKalqxkTzLEcu8Kb
	 adL5njQYN3hSShIQ1T0ryxS7VQjOGxeX4fUORXkr+2MZ2COL1mg006kOe12+kToXQr
	 OOFu8fgWpSAbunu9MLmq6XX3/z8eugJ7ofxLclOU0zrIBj3+nwoCOmGRor3/AGn5OK
	 0F6e+NGZnn+vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF81C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167628737.19633.2198689935682720748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4ad863f26099f047fc0d9af0759a695c477136fedcab27b802a86a5550932d
Date: Thu, 22 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671676287
