Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627B01F5F2
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 17:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACD4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 17:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695663908;
	bh=G9ikzgFek5LRec3vdGgnteI8dh64jsujMpKr1/BbSkQ=;
	h=To:Subject:From:Date:From;
	b=frTtCFdOQRHvuxxuYbT6W+ZFlEd726f9pyhFjxmBD7c1ybvwlN6LWLVElnJvVFAdR
	 CgdI7F9R28yFQ7I7QKo1AWPsHueGNyHTs3IZoldCVILKjsRlIKoQcHtVyhWtC7ON0E
	 KHDXA5G6b8dq6Ew63QqlrOIWJ4UDGlT1EcMqMPpXaWqAxGLS8i591krtZhqHHOUAwc
	 208KjNGNoeH13qQ2rWlV6CmL/ztB88R6woy3sWls5VXZOMvTDDLPykEGtaXD0NzR98
	 WgehDbg2jGCBW/EW11EMVKNVg4BWPQRq53ga9VDE3LpXFBa7iAUzH8SbyFUDJEB480
	 XiuOMqgdawBfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74CBCE7AB1
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 17:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169566390867.10552.11698903570568017668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d48fef3b5cc438ec7fa711331a2742dd508e3998447d2210c3dda91e8d7f3b
Date: Mon, 25 Sep 2023 17:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695663908
