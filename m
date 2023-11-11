Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121E414265
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBdhCHVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88883C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699707496;
	bh=ZLV1DbT0ma8wu815hVmWdwD41claAufmYTFXE4xOGa0=;
	h=To:Subject:From:Date:From;
	b=vBdhCHVgAwtGst8ep9EOOQ6AVTx3op+HHH+Cj2kfIdRtdbsMaO0bcMgiVuEJu2Wex
	 ozQyjVDuxApjYLHBoJ9toAVClDiWVmbdVo3lhmWInJoYDvwC5gmhr/GpJAuPWFcN4U
	 6sjS0IKyF7zD7rOuQDfSvGO0SsHhDMoIl5SfCmP6UmYRIh+4Ws6bZiQFndxDZuXJFF
	 HFkeSgl7Q/qmHDtjDVYu1U3TaqenutkE90meu5ZdEGIGerHsIuFA3w/o2poNwj65Wy
	 dMON0ISrEXQqxSJHOcT4wWywED3R0Me/JkeCAehw7lYegpjhi8pXVk7sUwgZrWTLHY
	 UxWkVY3g4AkVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D41C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169970749640.8448.5063628390363658351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ced7c424a5e34dd2266d2cad0542268d0e76bae4ff5029d82510ee34607b4b2
Date: Sat, 11 Nov 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699707496
