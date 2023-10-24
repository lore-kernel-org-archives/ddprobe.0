Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003522D622
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S85vYgZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91D45C433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698185296;
	bh=PGOQEgkExxnnL6b3HBZmlTPdmDoCNQwgTT83+jX6uic=;
	h=To:Subject:From:Date:From;
	b=S85vYgZMvOQJY3BnTfj/GB4NYTBQIqF/q6R7o7mvQNxbwBsQtYlE2oNCSwrOT6hgw
	 XpKKbsNmsQ45eUqDPm4Lb7QZ+BkkedGe52Y1fh2kkK9w1Kgjk+k/jDN29j6oWo6fDQ
	 K5L70Q4UIN7K+j3PSrTGCZK4Npmfhfyl7Z1ijgVNzE8dLsfwF0XiLxmJUdOr4xcOUV
	 f1A/Jgm0cPWv3cKEZwLUAVuqeMk14/twMMoSlAEJS6LiPmUnskbcfg4z9yr1glMSLE
	 ZeRnkEVJjjXaMgSRFshodd/pM58XAi/H9JenJZgT40K7+1xmVwvVm1kcLhROk0SjIJ
	 Gu2Z4Y0FlNAAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 708B3C07545
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169818529645.5055.5445595945633243070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d38042c1d593ff9109ed8442f37c8468f22e8822f7376d5ca63f949a4d45182
Date: Tue, 24 Oct 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698185296
