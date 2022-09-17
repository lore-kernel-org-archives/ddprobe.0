Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6AE1365
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7303CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663395653;
	bh=xcYe05/4g+TiVgk675hVxl5sxcQ52yO3Q0LlyVT4WZ0=;
	h=To:Subject:From:Date:From;
	b=ip4eEddJnPo0OUX/i6E9vILRkM41ZwGeEMD7p6S94nfaxiBugBfQyEg6XLacR5Giz
	 etKJ16EICaXEFlnXVx2blIGtdTzGjBBgMUqN4rEtMsbHCJsUyKb8oreoOpSmVxMiSt
	 JQ03zlpLOA1HWaJA/PBFYDjJ1MXMU/KgfVDbzinca/5Zc4xILbUkQ3/5CDIqmaETIa
	 FdTLZXr/4AEmexqitTG1pXydtRcYuiZjXDsdIAFCxJvMzqvO+u4a8d3l970TQS9QYR
	 7wkkpQ4E8UugFwpQQTWzdQVI7OMceA4P/o2nCi197ZQWb/ostD3zCa2eKAWsHErgty
	 OmZ2MK/9BHOPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5463CECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339565332.24685.10827955938747112400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823e341d69a5cae3e1adaee4e0f0c928b7977f0171a0dd70030d3e4bbfa4e919
Date: Sat, 17 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663395653
