Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7B72F26
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 23:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19A7C433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691364188;
	bh=k5xMHfWKWS1E6bhsnN3lAuDAar3VYVHhVNCFqdeb0KI=;
	h=To:Subject:From:Date:From;
	b=jzUYqBx9jMuNOik4nQFKv2tIGoAbdM9n0/sfmv28fvzALXk/EdkRh4Yn0qv14pTF4
	 Ai8QWd2+7ym4trxx3sYLi9+6eTkMHrC8bjN3dL9CV27+QEiXjMinpgWQd+GKmpuvlA
	 NcTuPJbdnZcReYjw3RJQj1HxWKKqJ89dL70DAkUAbTdGtW1dSUdIM4JhEheZLgBnJg
	 hAI6CrFxo0ThFdXY5eBGStUdaLkWHSKJTRJnfs0Py/jT4EnCiJxRtqf5UOKoS6Bi22
	 I9wFnEJxz8D3f24AnoEaX4nD3WflJ44AGiPhUQtSFIinpm7EHxlucyYSMhFtsmLpXV
	 X89Fa6Z161/IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D84C0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 23:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169136418869.973.9372940891511754130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c32caec4dbff715657f8d1f91e54b87451bccb67ecaf451d446274c525a1fdc
Date: Sun, 06 Aug 2023 23:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691364188
