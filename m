Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59582F31
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D04CC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670082054;
	bh=02AegAncyga5ztaS3qnzurCaEimIbDTyMMZ/FsN3SB0=;
	h=To:Subject:From:Date:From;
	b=ZdNn5CL8ZopRRDartwLU1dwDTnYKPmPNitjcyd/zUg5JYWDg6cINHmGK4SIWjJV5c
	 t77jePABLzEPfpuUeQo2Z/moPmEiVU3aY7WiOwva1iwIPbiILva28pKFxggDOUNtB3
	 MjzFwqVf5tzvtrzux3h3UY1pKmjFtidAeQobz5d7+aQVlhKZg/whWQvtNHOPu/TQIC
	 iBCjmdBIibUJX4fgqa3DxePaQc6StTCJQykZgonJ+xtSxidrG0XRQEmAQvk03hQ11R
	 ZXwWO29Dcn1td4JwDDc0mCmjnJ0VAcr0TOqQDxICEbgGf2OSkzKWLcK9+zu2j/Q1dW
	 xvLa3f0/Hr7pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522EDC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167008205433.24441.4326394978117408691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c399319e3800a732c2ea19710c2ef3e00af9b916e74c82b0819ebbc29c16b1b
Date: Sat, 03 Dec 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670082054
