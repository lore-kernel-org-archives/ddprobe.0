Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8242F25
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73928C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669304454;
	bh=mrm9U6wvvHefWYK/BIZ9mLjtN+MDCSGXEiENZgkZjEo=;
	h=To:Subject:From:Date:From;
	b=DMsuFPFmq3nawbMB6iHjDfOpDqZu04wzwc7LozBknitzwwrBuV1UiErZ0q5Tj/QsF
	 +eQIBgPMp4cohNSeOKF7m2dLwNOAToybbhX/8yERhkjccvkji48ONaHkckWawpN3sg
	 q+wUkOYL0wFBRSGkiwqU4Y/25imdsXaIqHDKpJZSCwLRwSAFL84IlZ10Qssu0sRBZi
	 g1qnCzWk1WncfMrq6BXCCku5fLSFASBIRAUHbbywgCDH3UwNZnxyXW6Gh1rbkdg1oF
	 Hdj5tEiA1waesvMLSwGMINieCJ1bu8tkOs80tvqSUoydFoZbukdllipqcH6uPDObfC
	 Fjlhc3Y3ExMoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59486C43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166930445435.26241.2717921526473245784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94439d206034f3f6df66efa8edeabfe50531a1ec05c1ee90a0f71a8195dc3eeb
Date: Thu, 24 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669304454
