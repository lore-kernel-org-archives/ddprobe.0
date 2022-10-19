Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E227E
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67FF3C433D7
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666191053;
	bh=ii27ExzaF7Xv4HKvfftZn+X0KR4CrgTcYCTaJoQz91U=;
	h=To:Subject:From:Date:From;
	b=o/rt+6+36fmDxu77RfnuMvRrAUmC9VJgSdQo6NJujEuijzkACTJWXrpE7GCt27gAI
	 4u6g0Dp572cxS5itnwu4s5JoYtA2zFpDRpXW3k4jVh1FsmVjAEPogpnZew5wZ70q4y
	 zes+AyHxc18fRtseZDxbHqefVLyl6t+0hCfBvt7xXCdnbOhxzzlbaqEYhoeYqxekGJ
	 CMhVJpSMA3DY8Azo1JxT3rfFmbiz7ZYbiDc9MWXhWMlPcttFaCT7z8kwFhC0qqMEB+
	 Q9s1E/bhHAxdBLBfOLPqSZJjCLATV/A4Adzwqam4/B9yk8OP/YJaPqbHelRe/fdzqg
	 wxkCMTfnoJtug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51349C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166619105332.16942.8871084758486858565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b190d029785347af2449721d76e0e8e83fd9d0721df4c8aeaa1562902ed1443
Date: Wed, 19 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666191053
