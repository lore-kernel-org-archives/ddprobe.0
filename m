Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317E41361
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18F4C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675773485;
	bh=W/H6Y55+SD6AUtEFZrxwpmRO7gp1ipbU1imlJtfS5dk=;
	h=To:Subject:From:Date:From;
	b=kYlS+Zkyb/kATaXa/+TxHRhE0RHE5i6yzqmaj1VTncquMARbvaYbnZ2xAoch+Hjh9
	 BlG42h/f+NHbZYrkodm6YvqTHmGHCm4HGZDa12Ag0jUAbbG2L07Rr0DdZWXVBs/Znp
	 Ks8cUPB2zPN7O9VUGikQumzbcQ1D2daBJLXynl8CFaDazL5KBHlGlIpAlBAm+56THt
	 U2x1Flgit9bNetH33u9OalWHjjNUDsDEpg79MaekNJIKDoy76aTCz8GXiNJJ+QsSoU
	 9CYh6Nt2JEluh5nS4jAdmrlu+dOeJtQEMaP4huYSNFCbuB+kO1tvMw0jPpWSKrGbrb
	 s8MZlRiCfpUTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CC5C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167577348574.31568.3546800281784863467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef0abfdcd06ff2b06ac805b81e466e31f6efa4db3e4bbbd09b7079f0ab941e3
Date: Tue, 07 Feb 2023 12:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675773485
