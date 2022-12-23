Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E9415A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A12C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671759087;
	bh=tK0EfImmpr/+vaVM5qultSkQhG/D3VRbu8wLJNYzYPU=;
	h=To:Subject:From:Date:From;
	b=s1JnJPIc0iYCOwiEhV1BCwhSYMeiDjfkV20lKzIZbTnpVVh9/MyS/Erb6sGJNiovp
	 mCecGC7vS+4ktJ+QhbE8S8R0o/m01Z5Kp5BcSKhSQUGkWrxAMtBj9K8VLKPz1zkGpW
	 E8EtfgYTuhyUjpbKI31qFoW5ZmdjrihHtHKUVeQQwxlN5KJ3Lxb8ULiFxOI/DGCkCt
	 L5cSRLMTjRxD1jfeyTONtkyhkq5S6vrT50sA3+CZLFSdjHyrLKVtWWe8NIcDmJnekA
	 WWdDd+WeyPR/VrvXYxpUOdEJc8HqWJVtECEQM0HWm6xknhdQT0TQ5Y0L2MJNsnZ/Yx
	 NfQGbZvkoclxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A47C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175908739.18678.6628847315594975094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35254a5147177df643018ce53e8cd23a3b33229b47295cac79cfd49f08fac323
Date: Fri, 23 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671759087
