Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D04BE4B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 10:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1A5C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 10:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687171868;
	bh=Z3TFRK36Gtw9Xhk1X/WW+z8fIjpKNA1c7SVqk5VPBlQ=;
	h=To:Subject:From:Date:From;
	b=NySmsgniCGkwTfugf3RMFvlPzJHfKf6zi2TN9k3gOE0QtxFfOak5M5cUmReRC2ARV
	 mqbM2URnBlxTN5g3b3MTP1PGe6eKdve2ENOoqQJ7w03CycYF4hD/Z9VhcejMSK9wWM
	 NQLVi4sc2e5TsozhbnSRS/ZD/SE+i2M82Vzu5cIRhRcj4ChyE1k1i9EVAzPjDQVva9
	 sAGNouq5inVvMmZABDbPIMSCNbgBXcetwFCcu803IyYIMdwrTurh8xL3UyZGfiRk1Q
	 ASvSrjDw3bKEE/LTL3vsUoGS5Z6ekGwlST4U5UtPFzFA4NBjyD9tFuB/tRDrw5eGK7
	 kVnSAidDBqq6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E54EB64DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 10:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168717186870.4377.7889755373967749953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a7c8a008714034f0bdab5002978a0f7f3db5e893e6990a5964f849792a0343
Date: Mon, 19 Jun 2023 10:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687171868
