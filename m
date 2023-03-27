Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B4E807
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 07:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE283C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 07:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679903525;
	bh=M2neKGNoKY0nU898l+N4g0HjDTP283vkOPBOvbtO7jE=;
	h=To:Subject:From:Date:From;
	b=FZpfrH0DDPpQ1wpOZ48ryEfTBtTMnk3ghp+ioTFmob5Vqs0xhbymo1apDSTWgOLzj
	 35IQ8drjHwEtDKs7B3exL2wFJdEIZFo954gT3M/WHhBpYLVy+ak2fJ2KFKyLUBvKpR
	 yZEZGkaBPFL9tI5Hm+73jrki6wbNCb6RYWlObNOfzCE21HZmh+Flh3SNK+MmGlYwFT
	 aGgjb8AlkRaReQNWMFEJpSHO/3ECbwNhxr8EzRtn4jpMX+ifMAPSgU1FxqQS3Mjt46
	 5mrn4WAMGZeAi6nfU3ckwJAEN3aBGrhrrUj9NpBk7y+pnPXaoaVZdQy4F1eJcAwsFd
	 SYQgux2wkny8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2595C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 07:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167990352578.7534.13991923970491709754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b2820cc0c635db811fdd469bcbe4e1aaa362116e5d726a68f47368a8b9530f
Date: Mon, 27 Mar 2023 07:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679903525
