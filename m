Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9BA7EE
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 06:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4538C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 06:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693117448;
	bh=6buyz5lUre1P+QaZaSeX3e4yHs+IeseagE+X0xIeIhA=;
	h=To:Subject:From:Date:From;
	b=KPmXamTB4/vrI+4VsMwVF03zlBUQntSbQI4Go1Zyu4zcE8RLyczGRs/jLhnzZsUKD
	 wxxVqAmMrexHUba4rM4aA9TilU8XvmUXUMaG8S8H/5+BR7RuVMbUa7r1AHuC0FW1wf
	 nvrrT5e7JrRqnICN0wDGzyTADK0O5HZ8/xBl2YkByLSR+upTtP6Rp9b+G/FRz+KXwG
	 ocU2fjRuJQok874p7PetEz7va+8jVoIPTxYT7shn+Xm6dDHIaGwd4N/pYBSAhZok9x
	 1qzr+0LucCmu62uYuxw98LtxYFUBAuIsBxohisxtqcckvXK8UNYFkVM3y4JtGh1DxO
	 oK1UOvS6ohrzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E02C83F11
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 06:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169311744867.27366.470191192413167740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937d3d7a5c06cb4481aae9be27420481fc44b5bb5f4cddec3046964cac566dd8
Date: Sun, 27 Aug 2023 06:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693117448
