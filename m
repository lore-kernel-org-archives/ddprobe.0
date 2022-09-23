Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC13533DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB90C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663932653;
	bh=tfiIJNq7Gaqf2tcJzB2MNhcC8oLjcSa+XTI07L4yUP8=;
	h=To:Subject:From:Date:From;
	b=dyn0B+q21wbh+mb3NT3aPArJG0KGU6oDuAsWy0aK+4BjtEJ6yzXhzkF7llOA4gIyV
	 aTwIlsFl7VH3fWzrfnPiKf3J6FBoHxkCItFilb9my7pRRcElP9OmMgIYKdYEpAlarA
	 oC5AzgRVEAroA8Y9QBgUVfoo1FHBiugqQomOmBH40yoFrVQkIjR8tm//7bSFl6pfSI
	 A0t9D5zb+rfry/s/5u04aWuFzt0kgs3Cj8oSEIo6xAgeNZbt6Ed9YXYIBqg3nrmQkv
	 N5MBuWSP1LgySq4aiHiSD1YuQ5hfZnIY2UUmQB1p6nxT5tX5dP7+KpjS10i11C3iD6
	 LbhntEgDYTk2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C9FECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393265332.29142.6463891563814541492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7568a091350919ac35ab943fda256e27e49e6c22589698c83963bc429df0e40
Date: Fri, 23 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663932653
