Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA79E1847
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9327BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672364487;
	bh=hqV0pEXlmFXGbIAXjlTNpKgZhfIAAXYTCEn5bgCdEkw=;
	h=To:Subject:From:Date:From;
	b=ttRnyhNt/ny65/POVu9Wcapvb+/8Y/NmBpPe81cZC/Aba2LzcwXrIDJrU4A5BiXTo
	 XbXI0qCZFb1dkz0YmdGJXM19xAk6dUsCvDFmbdZJvr8hLpdVLfO5UTxOZaUWA+ioWt
	 wxtbEqPOMk5LFMBBrFc4ySXY/KMfpGiIyHgv89hs+elvhXS1F7WIOWdpczTWonVMKe
	 rL5H2z7KhfZKtIUg5hrMsSyw5wjzzT6YIHOmn73T2MqgK07VmyjUQfbO6LyRGoyIaB
	 1Llj2I/1tgQXE/GjE/dBvBqGjeJLYOe1VnXAd9ZGOfHNOIzM4mpV4WAW/LSXbq5V3X
	 soCArY0iPEPMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E982C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236448742.30857.5684293306655307107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b00cce3b3c70dae4ed5a63a2e6e3ae81768abf8a9166e0f12dcd5802b1123b
Date: Fri, 30 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672364487
