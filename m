Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEADF7E5
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5F2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668379254;
	bh=U/NJfKHzQ6Ok5MM3cX/qoSHSBZfLTomH5w9IUgz87ks=;
	h=To:Subject:From:Date:From;
	b=aIRbBDq1o3jzu6vgtAuXfcaovWwOrZoY7/F0l3tn6Hd27UsJPjJX85hC3pzGPp3ey
	 7FsR0vpS+0OzcVFXkUObKcvjghNWPNn5HhxpH6oVV5akTc9yJc+X4Z0/5Y0h+JOskl
	 gzyUY27G3/CdoCq3mZ9+A6qTCrtz/nPTQLb09XAuZ7j4i3uFPvNLzIcFfZ2oic6hOL
	 /5O9qeODe77GG0A8Lo0+Ajwag52KezQ/ymAPa/D0ilTHpND4ufwiWq8gEDWPYPFBqn
	 WI8WDEyLLVOQZyIlwP8242W0R0+eESMRLnLU/zZC+QXq8fQftpYHMLUT2VGzET9C/P
	 Bm4ExvF5LOwFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F9CC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166837925432.12662.6380658488888352593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc11682356c69d3af52aa8828f2e56a45165cac201c37a6ae6cdcc26b162ac4f
Date: Sun, 13 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668379254
