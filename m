Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB98533CC
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5F7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665527453;
	bh=dsLbxTnMFFwVhtX/haWRg68aW+aLldomiKiV6DKx9Qs=;
	h=To:Subject:From:Date:From;
	b=cBrb5gVX5F6H0Ysv+dchL2i42SkKpIJBZ3VSQyQ2LbZtfhq9RxV5OOq/mIqBNaICN
	 6VU5F+Ls0r9S3lBxVixCRCmUkJJsX0uPwkKAfquQshBDKh3NBL19MRA23Tbx68YyN8
	 dq21Ik1gcF7cfEwmGddlwSR9fg5afmNdglikHD5Kk6brtB/HKKFKhq3MK1DFs1QWK5
	 7tbeP2yjOvHi3FUMRYL5hzL2rPz9oXadhSJTCRrX8FGP3U/Tj0CXGe715XPrjPgggr
	 S0E5qVaZDfMD2BOSw6cz1aec3rgmcR2Kw6BcOYCzar/Ua9lELWPFPd8cU5Je4djZSA
	 t75Q+ZfmpCzSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5782DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166552745335.26191.16759194136886307654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4bef2150aee2d6ba9d33070a0d17a45ceb1c51b1d2c03a3f4b927a4b05a13c
Date: Tue, 11 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665527453
