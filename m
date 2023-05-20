Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8AF3D39B
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 21:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7204C433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 21:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684618745;
	bh=+ruZLvukiHzPuOm9JMfCSzB8JtzMwTesHMQ7uUiqG+k=;
	h=To:Subject:From:Date:From;
	b=oOK+vaovlQb1V43Ti1RBowpfftHwDHrsQkxgje9PQLdu7hmDe3HRi0aFYYrsdTIOX
	 LzWbGO8nhhMCFjRL0+nPvL2G9BKd4PwCi3qkDEYHLR9aMJeAVctaiVX/C+0TE+ls3L
	 CrEHw2pov2WQBzkD/XNeCCEDXLXUeNZm+0SWEPK9FXlB7jLTMf32pAIXyc9qlMcmX3
	 cg0mxxs6tK9QED1c4a4xgC00VhuNPTpYHV4HBF6NVpu/sTch3jGnIHt3OY/CB22Uwm
	 TRt44IU40MCrTcklS0ovyFWYql+SfassG3Og0kOi0+DjFJXjvQ07LAth2UIRfNoVp4
	 YSraaGOa2Pfmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8B8C7EE2A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 21:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168461874576.7103.6951410600263380630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60dfe8b6d629ca66300ff743812484515c2451227d7f34e6387bb61c9cb22b8a
Date: Sat, 20 May 2023 21:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684618745
