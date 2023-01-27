Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA9C7B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 06:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01B5DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 06:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674799986;
	bh=T0NNn/jZouIHj0+Y7o5bCNTJ+TPLZJQ/F64QbFgfIPg=;
	h=To:Subject:From:Date:From;
	b=cp0rfAlS4Xd9H8zLIRg590jQ2qSU8Rkjlclc7ppwEMhml8ieJyM8RP1KLLgTUr8ju
	 cVsS6RpmJcRddj2v0C/6byGuqMH2jUM9EGhxq51oLMs+ikJqhlO/VtU8tBieinZx0I
	 2MXkRNwi630/EowX9NHkBQfTkpxr2zCC9rmISnowhhK6S82mKXNTrgnCe0/hNWpS3M
	 Zy+gDLOGb9Io/XD9BpuoZy652eg54+gYJMaJBnQbuaEFnL7jt4LEimJYwVo/5JSE6M
	 Fh+URB+x2ljOBMSxsWzFNpSm1waRmHOXWLgb7Ph9h0TSNfVR9b+yLPJ7QXDDVQZrE2
	 TiV1Coy0ZVuoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF90C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 06:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167479998582.18156.5532614156199106970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cdd8b0124044ebf2dda75e1ad221e429fdae9701bb8ea1c213b0a772a589e81
Date: Fri, 27 Jan 2023 06:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674799985
