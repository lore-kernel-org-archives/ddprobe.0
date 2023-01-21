Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B3D7E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF806C4339B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674311525;
	bh=/V+RtyLKSP5+uWWtr5dkDvCBMst9x2fllZesLvFhQnw=;
	h=To:Subject:From:Date:From;
	b=hflL2Kuu42wIJid+r9nGdEnxOKfGoeJKuz2PxEiy2n0pZ+WEzVQVwa/T5ul11f9oA
	 D/4xMuNnKivrOSDIqLtkwcBJjCjQ8r3bM7NzlMFh+vQSjqknDCNog/qLCZoks0doZW
	 uIt8P32px9/t+ib7gM8ClrII9iIm+mEye9zdBfRFRbYtWmBrEyHodN/NLtcKGgrpPZ
	 Y0+O+hiD+niRW5KRVpXNkorJIJ2K2CfzqHSbOGCD9UPBaD8BkPpQcsMw6UVISYv8VM
	 Xt4mJU4t+CO1GoVuHnMup/B1UI3WPvYuSKFa1EXB5gQw4fn5GPAWQVqSz6xL3b1uvE
	 9jO7/4R2JKEUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C441BC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167431152579.20262.12321247557458366886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc63b76d4ff71c778ae5c1e30fcb669e1781be58617c0fbf16378f43e239be4
Date: Sat, 21 Jan 2023 14:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674311525
