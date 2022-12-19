Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFBC7E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92FE2C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671422487;
	bh=IKP7SOd427/Tph9vGuZ5BYodiPlGM9LBnFyzlmDSfsE=;
	h=To:Subject:From:Date:From;
	b=EnlIHW6rYAzrM2gNtAZcYyfh/MjQN5OpGb8r02QFL1bU/b+JOihkQHTmZrsZQrci0
	 E8lJjGA8UvEKC4WEproiF5IiK5ZNrUoV0Ig6gVmS3uP/lCyL3seK/CIR1SE3do5OEi
	 OVRcz6JKa3LUr4nFLYXlQ0oG6XYtGYpgJVJgCUUas9A91Ebcd+Fa8LVUeTvxiwM8VG
	 Ftf8jTqDfF2TS5vwLkqsCQF9Z1btTbiyzWl0SrcatyN+Y9GbmaZWW53Hpk1RxVE+Nf
	 Z+BAi9V3EYJMEqRK3iPeSq5SuqJg/13J98XGa5fxr64psm6b5y8wdSdT+DcaTdi0Q8
	 9DvCBzjcNo6iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75534C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142248746.3808.2236109863730730397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8045f73bea0bea15a89f47ac95e0f2463abbb15c9f9ef577abd4227f67dd90
Date: Mon, 19 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671422487
