Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01A07E4
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A4CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665975653;
	bh=P0NmsiG1Fr7WxM4KyBgbMpmTGKBKtVulEPIa8QihoCs=;
	h=To:Subject:From:Date:From;
	b=jCutmK57U2B6HCzQh4CZ4wV7Y8VgN2m1uibEaJxUj8Zyod+fL8Ufvo9o/qukTnfVH
	 ObDhzHClrIz022Ha0mNVvGPaZlas57qIG3/eEpBrNwDwZjnbrnrrpYHFhSe42OrITT
	 YQ+7G7I5Jqzi3IYAEwKX8T4lpNUAMMuQdLOO6/etwqn3ZLmvCAVoowsAIVLneFmjQU
	 z9WmsDPc5CVPcFZDTdV9S2ymymtjKJXZ7cy/MRGib/OtxbuuwR92YrdBunGmp+5b0J
	 wVTjznLnjazXEoA/iBLANwl2wIfHFoHyEasOZwSkqzNKG5mfsQYd9vVfq06TyRate7
	 mvU7eAL5iKt8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5933AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166597565334.16256.2957825376711485622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8170c6da4fd8da6533271e2e4153c9378b11d3902b7a0720a3fd7f27807e420
Date: Mon, 17 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665975653
