Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E73F1C06
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 05:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37C9C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 05:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688881028;
	bh=JFnY9aanPwPnGSRFR9pfWtT6INeBnWSQSpC6mHqpVxc=;
	h=To:Subject:From:Date:From;
	b=DwMD5FmQajmbyYCx+2C5rRgbUBruqh7JaY4cfG6mRf3J92foWH9Kxy1YTpGdrUSFh
	 Hlqj9KCQNEde7+1DakXnVGbpRVMw0gWZxqsn+Cbc31ggno93t4AHN9p3RwyRSLDzdb
	 HSqDCRIH2UR/e18mqhRP5rnGPr0X4bvRtU6grpujKVHJdGlsdOtou8rfz0ZNnr2VtC
	 ahQZDtE2FkjLHXntRSVNTcVP4sNEhNLbYW/RaiM1JN1if66s3FCvuHK9WzvvEFWyJw
	 3phHAH6PEJwYo78eG53XtBK1nRKiNRW91YP8hJQ5sh0yPFVx/VJ3KgnLaIBPF2McR1
	 d7QyMepcCya2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA649EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 05:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168888102869.7710.4143631529381139134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfe88f15863122d64e8ff624a168b8b02deacf86fea49e26b8e1a7c0c5f98f1
Date: Sun, 09 Jul 2023 05:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688881028
