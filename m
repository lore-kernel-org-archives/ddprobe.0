Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624DD1640F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 14:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1E9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692974048;
	bh=qLYj59rDUKAjxZgQ2spWeoCeavLzlMbKNpBw1smom6M=;
	h=To:Subject:From:Date:From;
	b=X9J4J8fVZboN5HGGmaP9yw7g7kVH/xWfRmptMGjm7tKxRDab3rOv8Db4uQdPoPDJ4
	 H4ZQvlO8OKxZWs4WF5v5lxfkL2X3N1/Coj5s6hI5Z5w6R94JOGGfIgPhVzhdiza3ED
	 EP0RoqidGIZZnb56Z732gvJ+yHGvXXM9ALq1BSwnV+xsnfo8vmnz4BxBy8ybLBpMnX
	 NwC2mhsh61sLpVp8saCHb8IxSP1ob4iIPM0PljxVqY21s5PErCrujmaB3i/3I2XopG
	 Z8C8aN6Hd+l6yVlPSCEUB6WMkre5yT0HnilpRkmXBwH/t5NBSc4RtCZFXtCsBh/DPD
	 N3Be32MRzMXmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE3FC3DA66
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 14:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169297404870.6576.1578910309069413126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68ed4faa64d725872b79317fd69bf81639e446358c5d748a6a96942abb1064c
Date: Fri, 25 Aug 2023 14:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692974048
