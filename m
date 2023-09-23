Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D760CA66
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74BFC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695513308;
	bh=nMq5KWB8WlgZRIAjPnqQLURXPasE5elr+SHPj7yRLy4=;
	h=To:Subject:From:Date:From;
	b=E9e5CgJJxqvxOlDrgTRDFsWZAUFfKfgBZV63yhKd8wCvIsNAS7fqhv4WGa5jabA9l
	 mCRM5IX9KVxD64dlW8jMn4vQFu+o2qNvydc3k5/5sUkecuog4Hc54UxyvGx0AZf4DS
	 302tvdkp9hEDDzUYb2vmbq1Xq+Oe/IQhmnf3+bypg3MEGumCwEy+04GSh0gPGYWMk8
	 Fzq7dhAii5VCumcmRpgjjkftRbd1PA85k8sK9AYEiL9nmzfXNdNKLpVD/dnyI9FBX2
	 CY1VwU9vYSboxQxaK4t0k2cN1pTCj43L1fjqKFL9nzhiWY7N90rT6HKPxEspNz4hZM
	 j6NFPkszuAeSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA39FCE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169551330868.11801.16625507686422659051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa967af842d844c5f9128fb72bb7871f3f3df12fa670b736ae2000d4e09d6a61
Date: Sat, 23 Sep 2023 23:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695513308
