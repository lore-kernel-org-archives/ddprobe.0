Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18E8A31
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B28C433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667459454;
	bh=SK/m3QUWrsnkyJQESNfROQE7RjaqK++TU8MvMBIk6uc=;
	h=To:Subject:From:Date:From;
	b=uiGlfQAJ8+/lbY8xOT7UZ9DLqXFivbr7J+DjIsQLLLYSk7tnX4UI22h695KKFFdkC
	 UaHltM0/1zGMXSHaZZ0KZLvwTNxOokj3oTDjMGqnoPslj2ZFEBL8+IHcesAh9YIr0j
	 mIy4709sjOwWjdRV4wArDUUoqayINEe4aiYprp+vtDzmE7cIBnyRPp2NIfwASBV9FU
	 A2M/fVEiRxMS3xBgI88TokBfI0Nw4sBZJvL81y2ThrYBYcDsvq1eeoQxodBWsobzfl
	 uPd8VLCGXDSoR/zahZbCup52gCzabepQGgnPeXOGQigFVC/QkrUuybiB4Q2aRQE0ci
	 udTC1L8l49lSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F868C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166745945431.24505.11828064141080802933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75357c7073a3cef184bed0ce72d9bac55b8fb1f8c54ef7c5a6cd31c409a0a84a
Date: Thu, 03 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667459454
