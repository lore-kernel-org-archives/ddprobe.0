Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C598388
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 04:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D791AC433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 04:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696221368;
	bh=N1n0H4tAHUOlqfqRcfTCQiC6+XzFVHWSiIOCyg28b+A=;
	h=To:Subject:From:Date:From;
	b=WtMHJOY7dNHsHNGdVpWcwGzvP8APpzhWXiKmyR563FCFTBmC/XSH+6Pfcj2IGncXx
	 VNjwnmccSj2mpMl4Eyejokjo++V/HyHBApLECCn8NUL67iUgLDJAIeqhezHEOSgsej
	 NHOMMWABV47NVR7kOXSuclVK4ApwdQnYSl7W5ppeQyKcie4WZ9s+a2RUSz1XR1CJ8k
	 QB9gocoRLlVd9TQYGktJa7PftQEc1WSBnhhINa3VcevkN8kfU5PBwAUVIO2fDNmWh7
	 X3qIFiF9puHYX2Fr3g6FODMp+Pcqyuec/LjFX+fIZCDu1SCYMXxE8QdMXOmKIP2DX6
	 UZV3eRU9INeWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39E5E784AB
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 04:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169622136872.5656.6568756655607082311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b0644613ee938aae87ca6267243b962a706a2e01786a0e4d35fb898c38e9a8
Date: Mon, 02 Oct 2023 04:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696221368
