Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2D028DDD
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 14:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqlrQ9Xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B0EC433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 14:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696690028;
	bh=TwJU929n9nZCrFh/xKWGVwU7MBjPmnasz8PACptPYEs=;
	h=To:Subject:From:Date:From;
	b=mqlrQ9XjmpQE7Cdd6nVOwoga6lxxrmd5LFkLfNcmsjjKt4773DmFaRgwt6ehTm04E
	 BxteRj6NMjbGfeQ4l4nlu0hOY1gBqibdMLG6E6FzRCzZ2Ux1d02buk/9SxjL1q87dU
	 odpC1A6ZL2Tj2KMrhniC8KFIlZGKnZBwULF+DYuYucKQB6jaFbXsPauWlFEThgTgJ7
	 8PskNZua3f04U/SNZQ/F0PhJncCaurfD5X7FXtXtqdQmqBzARn1U4pjc2v+9CMH0OY
	 oEudVsdWrh1SdyFCBT/VmyqMgyfZ1UGKehP3jQ8/HgFq488xfRV9WNhE+pb3FIyRVe
	 vBijL5mFEiaFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD898E95A63
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 14:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169669002876.1998.12255301550425888175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628e84dc3ab2a39a1dedd5d4b84c9ad04dbb20952f8ebe8ee7cf4ca16d9348fa
Date: Sat, 07 Oct 2023 14:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696690028
