Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06BD2572
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73230C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666021253;
	bh=JeNPDzgUvj0roDY1uAaAu7ODofedd0Yfs6nV5LqpBMI=;
	h=To:Subject:From:Date:From;
	b=ok2D1yPC++Ig5I4ebMppgjW0yRS7M+NVT/OfHYlDbQW3UvEpg56rK26rvCyfrbJVg
	 dsp4G4KUQtPKTmxMG6sm2snumbgOg412rP40n7P/2rf8pdD74tWdXx31tA5Xu3Jq7T
	 t3z0eBGrkMEr0WoDl8ZUHtAOGERLmFL+telpqO8hGNBSPuxw8f9lZK2qvvDJYjYhGL
	 TNPTYtgRVRhr24inyE0TLOYExGlknuayYq3KMuDvlr8l+lBs7STDoSBk1xRzpQT2wa
	 DDjIzLBHNaPMRdTNW7j2Vy5h/yyNEkb2jARJjO1/FSziKq3/fsM55u/RlzfBXfMA9J
	 ssuZx+v5EFlLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 582ADC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166602125334.14075.16545413780275741666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6e25ddef8b6c230be4fc5c79daca29d4fdb97f5cf86732365234178e0c42ef
Date: Mon, 17 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666021253
