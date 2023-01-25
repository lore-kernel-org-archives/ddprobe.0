Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A262EA0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 12:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC617C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 12:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674650585;
	bh=JFcs7W7C9BD+knx/mSF4yTDBPk8H6wGu8gszloaSTlw=;
	h=To:Subject:From:Date:From;
	b=sVgo6Ub+x0B0OhpxBUdC+7ewoLgFG2vvPciQnsve6SNcReOrgKaSJbDbDyfb8Ddun
	 HYArQ+trdHi0oZZMQh3MFgSgIazCmsxclqS+kQESG+GEOc53fznBtERF1WUr/lCXvv
	 4W+HlhttkQYN5WWgUqMZZhoKwzaKdSYv3soEhV+LjhpuCmUCmEGnID0xVExbmBIvGW
	 pQZgHC7ddIun68uBV1JOEclFo4FjwQxJTvSuCm+vPzShnlG4owKAVn8xJgEbDyxYpk
	 cwxQetRDHEloLMwoLxLDpf4/J0I7JdLHGngaoRExuqd0lU02Zhl8AvWeDs5965C1mP
	 Vh7zZTxu0T4Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C449FC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 12:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167465058579.24791.12487331927455902227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d465f249f66bc7d45a86dce4a71674d345999d82f70ac9612094cbf806c3ec
Date: Wed, 25 Jan 2023 12:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674650585
