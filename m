Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E929017C2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E01C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673481687;
	bh=B18HjoCdsRy27VsqsKzZ9JH7meIsiAQX/hsvb7btB30=;
	h=To:Subject:From:Date:From;
	b=JO3gW+yzhS3X9V6cmzTxmpoVoMdyDRLe/HyobyVeOPlog7qbXGlGqzTyfFiA7xz3A
	 LTN/sZAlvUr/dBlA3HWDsua5wBuL8/M0M3UwvQG220PQGI3kesl+pH27iUmo10ba9M
	 /cGBTl+B0iqOsSs5ssAvzAihNXYZc2Z/2Nfqg7+yU3mkUKEDH9Huu2O5AEwcE4l+rC
	 ZSFUsaaaJfhiAmnkSP+n9AVsw2t2Ve6INsmjX0b9cnXeY7alN+g+5WTlxG5VAI2QDN
	 nmBnJdWTk3nEOuMqUNRFD62tjwCqr+bx8YT9xVqogpByBgld0lL5X2mEhCr3DytHgo
	 kOAilAMY2HULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E2CC5479D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167348168741.29041.7164626247247419610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 969fe491a7969d3f1542a307154e243d9c4d76add5cf59eeac792026682dd8ec
Date: Thu, 12 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673481687
