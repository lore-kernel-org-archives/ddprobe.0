Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC98163
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 04:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8FAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 04:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689395468;
	bh=VkArfs5hS/3WRygQDGTeK2gQc8hWfZUJrmfUwTBkIGk=;
	h=To:Subject:From:Date:From;
	b=HL9vQgmTOSJp20WPfh50fRK8dB839PcCNP3IW3kGx8+Iiu2TQRJivhob84yEsLBeE
	 h92Trg+ibR0XtNvYIWXGnbVta+IXmTHH4exrJ+1KG2k2MhyrLeCkjWbkK7NXJcdaaH
	 hdtiWkA7oEtoqCn2VjoXiV+BdtzDFE+Lgd6f9qygP0lRoySuYYb/VKymDsGj/PYU1h
	 XRnvz9ERSwCk6NQwJGKwbQ9c1a+tvH5yOh3AeAINfGE1dmBFF0xB78rDqmkE/h/C0w
	 foPBBdvrHFltpTjeAx+zUN0E4nNa19m0F/1qWscq+3KMjLfI60jaY2uTgiYxgl6L0/
	 qcFPVkzLiA60Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89ACEB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 04:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168939546871.12809.1355214952470943624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbadd44f8006d94c7593734f0ef0f9b5685775bf56e2e9e4f5089a873a8c3788
Date: Sat, 15 Jul 2023 04:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689395468
