Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4753B1FB1
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 10:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4845C433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 10:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684924505;
	bh=awqC2QQovACK+fBG9fMZbYIMRFk5ujUKX6sYFcvI/cc=;
	h=To:Subject:From:Date:From;
	b=sfDxgUHc1CJSio+2kO/esfBpB3J4hGc3G4/Z8IBTBkBm71PeRabf6Iq/pPBnbAtMP
	 UlJs8q4GyDWfT2AuLT9dD3yPv5ZOpSc+irpaSab7n+B03dH0Rh0a/kLbJ5z775vXnw
	 mjpPte/8nvYUyaUrSnDT/NCIYa6zjhrK2OUlfW2fi68v4zPSa2hlkcvnvmiGocmuLP
	 bR9nRodHk32mhlKagiN9gBEvd7nKxHA+dLSAQVbhDNaZcC8WTLBooqyPhC2bQwl9fx
	 ciWMCeBWpSFDECbnPJzZDe7Du9Q/AxCDm67t4EwYVRg6SLS3VMIG5ao7JY+BlDnnPY
	 CXsX+aQIUEBcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48CAC77B7A
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 10:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168492450578.8175.2639171334827683138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cae64ceb12b50bd68dfbad7cecb36c750a4e0aa17db8e53b9c0125e89506da
Date: Wed, 24 May 2023 10:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684924505
