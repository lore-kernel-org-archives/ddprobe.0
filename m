Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE096A4E
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A666C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666746653;
	bh=ql5fOPOthh/gr7Wg0et0OdLaIydu71Ggsk6afXQF57Y=;
	h=To:Subject:From:Date:From;
	b=YKcYeayjTJFtJuGQLjG+GLkALM6ABiUI1XzKYJWtrhTMPtPcgbtcwYXWjfmfczlHa
	 na7HvrDRfot8+jfFlDgV/o9noadCYgIS2tho/hGGsrELQLvbM2Q6xPtDTw5WerJYSN
	 bdZIIixd+doFljrlwCRbyC+K0njH0yEWKAfdbjJ1KOOUGinVU3rE2lrCQG4i1cfH6d
	 Frwh/g9gMfx5neh7FWbu8vgetvPDVz4jBSUntqG62rYae4AoTlOa8GlXV1pNdEEOr5
	 s4b2afL4faag1LpoIhyagC1kfltNy3uQM9IyEmH82uJCKBG2l5afHRc+Q/1dg3iIeD
	 5juv6l7PdR3cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F619C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674665331.20602.18429944544534218041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21ebf470ce954db8ee4d0bd2ffa554fa7818ce8b0f168e6e7d035ee8fd58e5e
Date: Wed, 26 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666746653
