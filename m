Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43040623
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 02:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0BCC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 02:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677464765;
	bh=vXJZcFyf2rYmSwdSmIM4nCqaPo5sygsXbq/n0FPFCL4=;
	h=To:Subject:From:Date:From;
	b=ofNLNGUhmq7fVLMf49yEMvSXkfrh43Dzie3qK4hyd3e+SG/yAQSIwMKoaIhq2cC3E
	 S0ah5L/AY4erEbx3HIaFVoS7/rQkcNlTAZ9203+kYxS8oJmC/A/wQ/0i5y9BHjSvEy
	 pGPrDqAWNGU08ns5ZbJw/VQ0PlGZThTrLUeVoCkkPYlXpDZdPYl/PvAv/i5fHOLIQR
	 66TEWGE3uXKwXTgieqtI10XDDQAzxdhhZ2qV0CCOBeDrWWII1H6vQgRYsuIKlbwjKe
	 j1WwxFlDvHsRUPreNrxOy1Ax7UkZkg/jS6AROcxXUAOtHgzk74+2tx0DPx0Vk2CJes
	 SWxC5K+4YvR2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4806C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 02:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167746476579.21080.8082414623944597354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3424348e0ea30af267bbab9d56794e5403e086f8a42a2f93b09a363e4d987392
Date: Mon, 27 Feb 2023 02:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677464765
