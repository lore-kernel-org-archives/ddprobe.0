Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544EE156F3
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 19:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE56AC433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 19:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691523788;
	bh=wYCxqUUqa1X89OrVSqwYVUOm8CG4EQPDSvbG0DDa7uI=;
	h=To:Subject:From:Date:From;
	b=gyVm17/1s8N14BxeXmJj1b6d7jJBfBuWKua2uKUnA+l3tMhjWV27OLG9AnD0a1ZVo
	 IksK4+FBR9ChvB9jd01HKjyMqJGMO3pAkJJjUkzoDh7RLcMOp8c2h9muFM0Uw8MPkC
	 6ndNJ+Jr2Rn7A8KW+UPcrdM+c+IqQpqRqczzaGyrJmOCb6LCdABEU99giH83aR/+bw
	 7AjBurkMPTOsbRlmQylcwfb/8jsSQXaMrhJt3B6iV4kzvEQGAityu7JUbPxkAK5nFN
	 GVlXb3QpG4DvkovX55ZmdtaaD9vKWwqEmtHHZlXFo+tpwalZvBv5pWmwhj9gDUIYhG
	 zEON6GrINx+Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD53AC001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 19:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169152378869.3437.3172675937600232865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8140ae3057eb4d983cb853e1f02d7e2499b47bafd0d2f3648ba5fd10b825677e
Date: Tue, 08 Aug 2023 19:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691523788
