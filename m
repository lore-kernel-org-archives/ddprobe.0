Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B497C
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7519AC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664813453;
	bh=wq+LyuSTocwFsUqPeFd+0dC1DeQGOQUoqxgN7JZDRXQ=;
	h=To:Subject:From:Date:From;
	b=aUIfJm7CuCw6emCz7uSWHaophVTehc6Rhp1Y0z0to6pX9kh6JZZ3ocAi1Qxj/zNj7
	 krexdhkIXwH0FvDFrDuyNasdmu4dTklKfloZ3mbLlMUxAQ6DsVfOGIAE0uVeIRWrIP
	 KnWBkcF/wgEIyXRfYIaORBlXs0WruDZxiGxL5aGclxlCXjVFuN5CuH2Dd7ugfDW+K6
	 TsLlkdxRWnykw5/kjGkGpvsYvhtA0PzFHsGonW+6SVJ+N9d7xS8hevH9ytT61Zs4Kp
	 bpyz6lNhy/Ot0VTgjBatfR5kf/RZB7mole+Q0dXGs+kixOcOE40AFK0khz8706ldum
	 p3rKSxJfss2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55496C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166481345334.15233.4034438560995281603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b10ead1f467366bf19d8ac5252715a4f2558da1b6b7c803304c49ad1a079ba6
Date: Mon, 03 Oct 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664813453
