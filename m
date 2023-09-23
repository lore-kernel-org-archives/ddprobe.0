Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80287CA66
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB5EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695511508;
	bh=66Ehx5dEOww/elY0PeFmIXCiZ39K6g2HNV3/C9Ipycw=;
	h=To:Subject:From:Date:From;
	b=PhDOhlA0SPfRIWD9ld+qm3/DU1+4JlwUMYzas6Zq+ZViXB/ywCzZHC9oaLtZM4ozZ
	 i9QbuuhL0uy/3mohR/vTME+1y1Jd+IKVo13qXtqvyYPNZCPhfbDjEDmcZ2OSHHParD
	 xL6Chge/5JQ8QehshPswSUWf1elm7yRZhT9qeFcfQk5q6SE3ev2dnmoJ1zlbQIaSAJ
	 eBELP/tTn3NBAhQIsaidBbDn4+MOC6VZ7IIFKM2WvOu4p4RcBi4Fu9b/0KPbv7XPae
	 U53jKiAcVS98qPDIRqcdFZDgKSktK0ybGQu0KFXKQnkvSQsVqIQ5eL0c0Z8IR+xCCu
	 E2OYFwG1R5aTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6ECCE7A88
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169551150870.25898.12648442714995111248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51397badfa0a788a6ab1075b4671ff4a082258c13bce701a5ee8edfc1b01c20
Date: Sat, 23 Sep 2023 23:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695511508
