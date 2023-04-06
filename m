Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E1B29A1
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 12:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C23FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 12:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680785286;
	bh=4b05+EnjOpTaY4wgTR+KSsJKDxG6a2bd5FriHGE3s/Q=;
	h=To:Subject:From:Date:From;
	b=X8ouZ+NVZFAoOvY3Gq0kMpjHBnZBjaksRbgDBFpLX93cVXFbhLoaHioBAtVT44Sq5
	 Q44toVC/BTtMnALhXI0m4FBSnadj948qVvSL2GInpyXJllhlAOgkq16l2mIuOxvjJN
	 H3Tml4ZxEDeYjnF+qO8BLDT16d86xBqWJDSyAWYbksB9la2bCGQQ99OKxR8Gl+T6dZ
	 YHh7dYZP+G6CVEvwR6pUvCr1KgwXVN3vLCELtJMKABt2JesVm4L0ZkX+4NVCdAkcjw
	 p7OJRQBtJExhfo9fIVEy/iAd8eAhx2ieRr1FABehEAgjiEtpG4HTGcBDCN4P8vvgz1
	 Qzc8mEGVrzh4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB137C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 12:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168078528588.7757.3856359189638238690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea8bd3b5b8fe651d196d20129c7fa07431ce3cc871c2eea9d74500c3119f45a
Date: Thu, 06 Apr 2023 12:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680785285
