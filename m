Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0AD3C22
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 02:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7986C433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 02:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683513485;
	bh=bNzwYxbzxLSy7Xx1QyeVNIZf/3PpGTQ2owTwghqe9vs=;
	h=To:Subject:From:Date:From;
	b=DUwhSUr0Aw8+myqTWo8MZI6fvB2hAmtzztdlxYd+yv73mf5gcwoiegjhdVtiOMUED
	 x0b6tgaTzIv83O2oF9efcm+MXpJbY6d7dCbLShwKOGOp1UloyYFqKH+nUdl9OroEMk
	 YRTB/p4Q8iDMV8A1z9mzc2s2IMvBf00IT+Sb6E33fSo6A9RCeQ/WJmgIL3EW5jAmJd
	 oX/vVjaCDiMcy6Daaai2bjfzA76AbMfNUYgMtha3dJ4Xbf0PJBKHLIUmL5+6UESLVa
	 pFbXr97c7dLEokkCB/6DOVaSEOFG8csnT/B+5c+zXtK0+wXmSh3rbZOR56lFXIx4rG
	 mPzWgBkBCeHVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96CAC77B7D
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 02:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168351348574.1785.2571268855980051295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2778392fe7ca2242cc480901d9123d5ec1bcc4d86e60e9092cbb5a7d9a4faef1
Date: Mon, 08 May 2023 02:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683513485
