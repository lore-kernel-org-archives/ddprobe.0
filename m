Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53311D52E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D436FC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688762828;
	bh=uOFI/87fZFWTaL2/nvfWBl9hhXZKCghfqRLqHOn+0s4=;
	h=To:Subject:From:Date:From;
	b=kqX1OpsTTFSqAyzpvMiWrxl56paNV3mlCUfzV5nAwcIPj9soaZDq7LtWNMEbmlNgv
	 bcuN5K/14ygHzNFZ/XFd79VA9XyiYSA9BxwlZvNoLRYAJLZm7j5F9PBABTo2+Cj8Ld
	 UVJYf10fj2jjNy8TDxD5T17uaEtOSdj+bD0zuLgkI6EzI/0nYG0yhWXQ7VnxRqFwpg
	 EG3mZto+SL3p/rOgLDpOXJ6sQ7ChjgW7gCRQkBba5Q/YiWPDLYAdxbFj1IrGihttDD
	 OH2Zx5K+LHGAd+1lkReyqH54lZ1bjh/SKWoATCDbcbvaLiiruMMYDU6Trwg1Bp73kN
	 /rVaf5ck5gXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4A5EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876282870.1049.747027575494055323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f49740c5a31972c39d48320b21bb39ef9002cb20434bf8bc3153b6c6f3e72f1
Date: Fri, 07 Jul 2023 20:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688762828
