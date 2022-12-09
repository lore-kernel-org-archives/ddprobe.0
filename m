Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D459FEC1
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C42C433F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670583687;
	bh=5DOmCKTRUIuQks7vKhVAOAFWnCwrgY+2aFxgDFH+VxI=;
	h=To:Subject:From:Date:From;
	b=gsgPkqSAXEjjgNnh7NHLPbVm7XKadstMHPiXgIwdbZ+s5kX30XiYjb5c55vbLl0Zu
	 ylnL5vpMRpRGNAuJ1LvxvJ3aI0hpPeQNuTAqI6P8FgJ86semfmOrtBbXPeWr72ZP3s
	 RWDOxyZfL30gvwZE6rZd7pMcqZCJKkOZ3X4eJnMoMhthw22C1xmRP/a8GcmbfTCIcD
	 vfot534vuyoWJt91h0SqEeEfdmvyroGI7yrdH5EFMISiTDL9pnhClTRfyJce5K1pqP
	 LwHvq4rVSj/KktCKpkvMfayRPJ9aHbdPuAoRrPixVY3FU4DluRiQ5FQXP60KR/NTPy
	 LHLqPwdyC6ugQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D554C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058368737.28225.3034840613259840167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0714bfa5e3bd8616f400750c63a989914a3b752eed1115c93070c0702ac01566
Date: Fri, 09 Dec 2022 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670583687
