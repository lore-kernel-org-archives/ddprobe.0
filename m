Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6973C36
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72021C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668882054;
	bh=PccB7TWcAGr3qIKGIlpbQ9NFwduSOMchmM91+apIKVA=;
	h=To:Subject:From:Date:From;
	b=lIJHxuUz36YTl6DUarB5sfNrGdYuVDIzrByMP2hzLNHDvm5IAZzxHkHK6MSFIxgI+
	 L0+CWWMLud+2Q+seSedd3rXinv7R/G62Hhpi6b/MR4IedL5Xurl7e42QqKzUrvZQ8G
	 Gs+w6Ugd9ZVH2LIg0V3mr/41oo0Nv/7Pjw1vTOpoTn9jMdeZ+e78n9tIgh2V1dzE1d
	 2GKYDgM87zh89zKYCVbkO9Z1fm83NqGMwTcYP6thGPJecdDRjtGED6NQAKzU02OQw7
	 Bi+bNdhjXQLvM23uNR+i+ZbbS61W76xPbXRE4aqVBYoczM0MHF1BoEDR2QVcz9Eviu
	 WaUdlw/R8rR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553A8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888205433.31257.14847157557982837142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3a3254d4540c2519f5cc0ef45420b672b477de083435d830298d38d7b3b4ff
Date: Sat, 19 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668882054
