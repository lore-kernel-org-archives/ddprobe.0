Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E2529A8
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A495C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664107853;
	bh=t3WpyKwHwvgiJiHZT5TrehOLLrkVaK6PLtNGP0XOzTo=;
	h=To:Subject:From:Date:From;
	b=tpYu3ue/6CTt9LHAINKZ1uJWb/Y2cPE1Nf8eEYeeobQQ53qSwMT+6MWp0C40ztX77
	 s0ls0zIozRWQiYCxWv/LrH14TW4ALdnpa2iNoJgAC+rZnFHwKJCcBmCVEEPdpm4vDs
	 1328Pre5bl9t97F5iM4OxHClYr1IxN4sD8hgT5M6HgFXknUUlmCl0vvfPniQ5/SEdz
	 VtE9d4K9U8uWRdPLnxROQvP8hTRb3BJTZ9EUcaOdnzyzPMfSOg67N0CEbaz6aX5X/s
	 A/3k7uSfNkerjkxG7oQrobKnp8fG9St0Mhvwo7MQ2oTLLeGcdIb/Suw7oavOZFDMF3
	 MP+eor//UFeXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53094C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166410785332.22472.8845035385313944587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156a54f61da306dc14780828eef0b3f0458dc19aba1124604969261dd28927c0
Date: Sun, 25 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664107853
