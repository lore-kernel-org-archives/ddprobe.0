Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3BF441A
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E50FC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665001253;
	bh=0dsodCGjhhe6PO0M9+024ZVRMEyDOhFQzBEIQNlT6WQ=;
	h=To:Subject:From:Date:From;
	b=R88qkal5/4Fv883CjF0xfAJ44fRIw8cd8D9U1q4ku/NjkqHsTPyLx0y6Ck0BIe23o
	 /PpSNhY8ArROZEh77rE+g2vk+1/imWKMJLPD+B92NDP5tRf0kgt9uJJUHzGDiEN8IU
	 V9IcznU5GzPdDIzqqWw9nGb+BEj1Jc8eaLRj12nAQEECwlvUj7MPrDTbMHpEmZLtsN
	 HV8n1tMP+kIkV3LC2TN1ieH/3O7gThECwoWB89Ct2JnKznlnFiT85zn7axpdq93nx9
	 YEJkpQJPWrUXifnFnaSyB4o0+NhVgdrWQd0gMNWOnROqrdsUrHqWF4kU8trTv1+7+x
	 JMTTnSwJfFOrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F20C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166500125333.17274.9348303508151542225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a99dc46471f189844d382cbd8589e62cfc0c3aa225322bc07c737f66245954f
Date: Wed, 05 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665001253
