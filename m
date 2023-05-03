Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31469D506
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 11:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA68C4339E
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 11:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683112745;
	bh=ZPoVvxbu3GriLb2LfFAydmheF32biwIGeDLUvOAUH18=;
	h=To:Subject:From:Date:From;
	b=dIDiS8mXTd5Yb0oVNO3Db4Hsmg/pm7Z6HJaRQBgERAXwBNwaMxAxTN3CAM8VnqsPf
	 Y0DSy+ZPYQkJy5uzYH/J0+Uvn+t3Om/NXqNbKPr8TsddmYtUE2CAPVAIoCnvKhzdD+
	 lS8mT9BPrEgpiIK3g+6VuA2Eq2g8LRpHIvT8umG0CjFZ63VVb2XeU5vH2xTHbmm4jZ
	 foj+L6IAOJJlcdD3n+CZB6PdYTEU9tqhoEEIlHnWaw5l8IXfbM84DvfbmGTyV+oss+
	 kYCLpvH//kQRyad6AefPDdTFQnJmAyM2zf3Q8bzdT8TzTx/DVjrZrlkGj1cGy6bs4q
	 iA03FoE0EXmTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C470CC7EE22
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 11:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168311274578.5979.928790959554128032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83635f7101b5405ff3cd2197f7a8e3f7245fef0adab9aac71f1b78c2ab412ef5
Date: Wed, 03 May 2023 11:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683112745
