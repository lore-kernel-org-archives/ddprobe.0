Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3051011182
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9D4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684511285;
	bh=Dp0NQXk2SUuUMZckInXFWVpeLaIbpwIjwRYnDYbppJs=;
	h=To:Subject:From:Date:From;
	b=gvyTI5vBYxWu5nZlNEe4zFRfRgo1qKD74svzL9lwdlDIxfYmbKE4yiXyRUnfGbjmj
	 2tTkhyh0JFs6hXfR1VwiYcDAdAQjlGAjhk1FQ8mO/EEA57i9jEOxp0TUP/xF8PN/O7
	 UPjMRA5nUFt/BjMxNdy2mGYnv4cg2QoSdnxt5meam4cYRFAIOnLZWZ5U6uRmi2Ektl
	 CAQDgawo9WBltT4/u05eSPk3wswPWdqTA5T8CRjXZhUjy781P0fTcemMUFLbXqDQU7
	 ImsTc1W0Ys4CGbR3Se2lJ+jYym1jI57qUo9+7RSpenlkHoqd6qIYDdmi+sAiWjQ8Or
	 Tjr7txB3L77kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2BEC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168451128577.17359.10405894552137869296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5646a73b2d7bad2588fcf70cf90c57394e6962e3660fb9a27e78abeb903563ea
Date: Fri, 19 May 2023 15:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684511285
