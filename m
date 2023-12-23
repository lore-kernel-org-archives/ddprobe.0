Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2038C803
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjWexZiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85110C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703297896;
	bh=I8YPfe8ga4CvtwOP2RhTAc45pyL/ZSGHcN7uusRjQjw=;
	h=To:Subject:From:Date:From;
	b=GjWexZiPyFEn91A85w8P+pJ2DUAgKLFjZGafTq/qD/2gw8Tzn7qRNVFUsAIKRuU2Y
	 sSE091JuTblqVPo2oMHsLqb43WYdeTwp8vMCiwRYeNxqFZLv4FRkA/67sN4BbrQfBP
	 Wh845c91DFdpMOvcWzgMrCgLtrYzXbtGgqaX/7t0Kke+GIs2+dkx3uePBrdsCB+vUo
	 1mBzwCzGFVXsd0dqiVahZM1Ju5xGwqcnUrxZgwEh+ghGaNjJR2jOQrktgedDLMjdrR
	 L5olDA2w5lUTyDmj0cY8MWm93cxdQ/STvNvxaBfjO83wp0rg2FDr5xGwqk5EJj6eAV
	 pkGiL+u7CjOdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648A9C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170329789639.2856.2747010264964101276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54dc891cb88fd24028f42e59d819891b720c041fca87e1dab09112c9331ee1e0
Date: Sat, 23 Dec 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703297896
