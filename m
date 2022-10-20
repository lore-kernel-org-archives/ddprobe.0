Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4667E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6841FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666295453;
	bh=vt1yqI/Bf5/WbR8EHnjnU+/k5RjO1R+u0DE7S2+DRCM=;
	h=To:Subject:From:Date:From;
	b=Vq8+RNEWbUjUkGjlN7YPEmlUEgd8GmA3yaG/WAAzeM3l+95laaKc0zUx51i+kqt6q
	 fcGyvHLz3KaPsrv3gSo47N2rvn4OJUUh+XvzMfgvsqefcR4w7ucUEUpgxtuxXhP92K
	 mHUpIJL8Ae7Fzth018C/E6M5R1hOEMzUXkE0akedH/UC5YBXrkB6CTYvFxIF5PrS06
	 GigtreyLR6FSRt9wt4anN2sRoara/3w/EobTGrp04PjxF1tV81+xMrJMtVWZomCnbB
	 E+AKIJ5qEjEfpSATxKPAZKXzeerFe58sWOInfyfrKHBrQeQr+myN50RPvMbsRw/fPU
	 P3v5HD+pTdvCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5109BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166629545332.26257.12539799871913162962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b979fc4a1db544411fd5db34d5da4b301a66ff86840777767f3e01b0f9c206
Date: Thu, 20 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666295453
