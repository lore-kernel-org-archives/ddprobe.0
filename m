Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7F68F7A
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9F4C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669656654;
	bh=XzAbaCAu5Z/RdcRubpuOiRl4uxSfG3vM5dOMuorXSIo=;
	h=To:Subject:From:Date:From;
	b=p5yoQmvILHrZaidaGpw/SMoYnJ0nIVqGkAfVgFGJL7RirJUAwkp3psb1LuyTSHdkr
	 6iohqEuJE+CJZ6ETaWS0iMcgIOoOL6Z71Dn0sJ6Ssa4rubZR2C0hqJycg5ACRiGxWQ
	 cNsswKRxwQ4t3zybIzK3BF5FpmKdSS76T6qtHYcpydDhlI8OTFQP5rpqYCjpEfC2H1
	 DB4RsGeFJCyOaCm1LQNG6bAvZ62ffjaIkdEyolm+fDX1jmz8vTMV3neYTCvzlclz/Y
	 7UVUxIJajODiixFh9NYzEvCy65LSnFLKRVciRBRuDx8qLsiZUeXMc2B8IqCh5pPNRS
	 KDQVtut5mmkFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C28C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166965665433.24466.12566273315207450607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1623028cf01a0f599adc064cac9e17fd46e4adf3fe0e56b4f168b00eaa40b34a
Date: Mon, 28 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669656654
