Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5521C2E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A25FC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665355253;
	bh=fRmwbyRUIvCFWIM1B9CXyNakdHefLoRqE0kSsMIGgYg=;
	h=To:Subject:From:Date:From;
	b=AFWPl5L8r/+AAN8KB6dwkCx2EpMcH05ALDDavuIy3McR2kqXdDER+vFA4wxY6HPxR
	 lshI10zaBy0X9CRjOigAS4s2BNHKuCa3A+CbWUdDAubsQK5tX9y2hj0OjWP0CyDPGm
	 1ccBuYdCddvIusjNX6KG/2rzf4o8D5lYFdGPBlDa+3s2IYkPVR8MBZBRfxRUusMPvJ
	 gi0gqBJuPlzLb9NTDL3WTPSiI1Bk3XvjQisO4vBmjMUIJLuQXeEJsJQDhd8Rjyc0tY
	 LiVDFAWE2EzzCpepZ7AT/suzi/m1OMDEfSaU+WcTRBXO9KRQsYF3sK7FTTjWzxQhMz
	 Y+HMT2ExlrZGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A4EC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166535525332.11803.6332251077826500490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7c55cce1f988057fc9bf90d87d54cdc84c5a104d2396e45e9467fed36ae3e4
Date: Sun, 09 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665355253
