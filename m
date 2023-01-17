Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4BC328EC
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 889B5C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673976087;
	bh=DNZEd75+AdtLreAA8zTTlAGMHsEZqa6q0Wm2++RpFEU=;
	h=To:Subject:From:Date:From;
	b=mSBfkHBtj613PLhngkTrJiyGtr4QIjSnxCEWwE59zcbxlh8IMvpmdoq+bq36R+XQQ
	 hcIj2qyEkBxOWmvb09BAcR1SsfgNw3W8L/3kbx7BqiF/z2QuKKAxQl3oUJ3jb+RqeV
	 xyHGKh0/RAXT1MLytaSLIRrMu/mF2cNxRJ749u8Q8fgYdqMJaDw8kU7Ym5j7DYGmZ2
	 HUAU642URD8tPE3Ey7N/Ku8JDPUEACHnGwTM7GvZgW284ad62d6+XrF7992Q5SEs9d
	 m6e5AFyLFZsPoHh+kLMl+CrmbAIAlqsP4NM9lmAsSjF7RCfr/kKSq51wcWswLejvbZ
	 qQkQ2u5/zk3lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64561C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167397608740.12399.10316731158201012959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a03a76dc75d270aa52df2e0607fbca12ffd67765db6ba51d2e0586d5bec0c4
Date: Tue, 17 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673976087
