Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC5B1FA0
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A18DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669285854;
	bh=XlLheYYfBhCfBIz8VbkzDr4miUbRTuzN8AvEdtdwXNk=;
	h=To:Subject:From:Date:From;
	b=jL3E8SFpptUsgQclhIX1Nhbn01wx+Isb0ikm3Z8w0EJFJL649Vvf81deBe+rkgTOp
	 6wIHbkyMw2SxCdBszMdp4Oc37mjhy8s0IbgLGIRu9vBnda/H0584X7pYQWXSZ5oO2z
	 mDx6VUZftiUvAyobjfD4MTAUGNtEQC+ycqK0N1xuizQC3bS+kdK7xVAxlxSiZW60rF
	 i6JOeVgV2Vfll7Dzj07lTLQ1cenh62W6/4RxIkYrDTHPpJ/SnH4ZwtqRZSs0gcyQ3d
	 wcwB+XilBV3RH25auge71zsOV3Eqh/DQAOTbt+zOk30Yo8+HyVoV7/mqu6I4FPUb9I
	 gmFtaNKBejqgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F6FDC43219
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166928585431.2980.820777116553246762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f271d0ac10a600e83ac51db67a182e2cfccdebc536cb187d11d2e7fc4d7437c6
Date: Thu, 24 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669285854
