Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89112912
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A498C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669243254;
	bh=EdweB0nwapBB16XFCkW2pE7q7QyCtN+Q9ynfwxIsJ9M=;
	h=To:Subject:From:Date:From;
	b=unPEOT1enGVLlAbGWbuRiea29JuzNTVCo9rW9ki22/sBGb2wFBqjye5bv/QK0X1na
	 h0I6pRDcR4TBrIpP5MYmA5Exs7ve8WSdTFYkSKrUa286Py29sJuiArUv9KhhdCp4u7
	 akUoBKxAjvOV3RNHgXTTrruMtOGAC1JLblEPdtgsDDajYfR2D9nM37f24ZCdzu0urN
	 NpagcJGQG4L2p7STYHDiOR3IxY6C+eTR/ap5NanbXjw/Yq6CjopRPm3qoecFRtI7BT
	 n7p87CpgSzQlmBgU4WWNFx8r5xRrs1dVwXHYUIqx0q6PO999Rq48FzCljHjGWzxn9X
	 7Y3/nVrwlEJYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53504C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166924325433.26959.8897534203014016259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178f2f6d9fe857b64e2a68e2188f2d2f22200b7931b90f0be43ad8448ede54c1
Date: Wed, 23 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669243254
