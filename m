Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842C311C8B
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 14:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6682C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 14:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695651908;
	bh=2uVOraxkWMioukAubDP8sQs1YUtLdQsNT7iEGfiSyy0=;
	h=To:Subject:From:Date:From;
	b=QQxKDLRFtR1ryBtwFvddwQ8zBSFEhoQOli5pByqHlthjY/nPX9S8cgF5PxIhZMMGi
	 1rBmKyEyPwlYj+I8sLdxElxL6kV4/9Aq3zQGk2YnYu2nXAPQE9i3kML/U9IRmk++M0
	 HgwfRLPABEwV0G59Hg/jiZjP4S2L6ORIJ1qxcQ4v8xFcqGT1PGwztE6c3BFjlVOXMF
	 /Hjqy+OGCLC0zkArpugE/nDAaKgiEP2hFHAuCgirNV6JrAgsDnmJJ8pMJvT5+fW4pg
	 +XQKyppPlrXAJYdYoEtVLteQAN70vB/ero+geDa1hdpHW7SI0FP+APFQEBxMT+7HRY
	 ni9HOKnudWWgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C189CCE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 14:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169565190877.4167.12938075205011466977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49cbaa6b86eb3012cb2dbd1eccb51b82bca398fd53237ed697f9cf4286bcdfa
Date: Mon, 25 Sep 2023 14:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695651908
