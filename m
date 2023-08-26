Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC70A53
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46E7C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693074848;
	bh=yBpp5PMuh8kc1uW8qYqbeoxhKStn9IDXkMRMDWF9SO0=;
	h=To:Subject:From:Date:From;
	b=L4sOsbcYUHybOw9aUFsPA6EHr75PwiagvS6Nu04a2yCI+wUcSh3ZvkaJ21arKc2Bh
	 PZQpNk2wYC8cLeeNosYeIF+Co98CPRoWchLNjQ8/VhV5F4jAIsfN/QJZsimDAIKqgZ
	 CBrivqTAIdsNW9+K/FqhjuWQPQU/piU0eQvPSaHlJHWJVTSOP80GYrVSLPQZhDnLt1
	 h3LmGPTs3LZU4EglVY8GX1Hcfdwjv23cmFGtuDKe12TSzbC6l+bG0Ug5E18ZsweCcp
	 lB1Ufhcrc/S36ENwPeMVB5Ed73QjmoIHhCy6rOHkw9FwQSQPVSZPud+B1HTbvU4Vp4
	 DaxvCy1TPte8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CD0C83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169307484866.8821.14312871039919659153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf142857a39c32107e54d39f736df7f0e6d0f32a9010d1534e248e114c03030
Date: Sat, 26 Aug 2023 18:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693074848
