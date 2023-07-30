Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4251FDA
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 19:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9DBC433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 19:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690743728;
	bh=nMGDLThF5bhoJ+LDRiUZ8DP4nW5gOPusLE3HFlhBXDs=;
	h=To:Subject:From:Date:From;
	b=QIqXmKwRFWudPBWxwUujJFSs6rDOjPPfHMKXXhpX6ML/2j4h9COfP3kqjpZt/awaB
	 l9IVEDvlau60leKIyTAa47XbUaelCtC1iSIGC4JSvShWiyXQuQoUXGOCZbkKMzD6B+
	 1H+a4HSK0CIvR/bnCER90KCzGpSMzajIY9fmwGt/Q8gzGP+2yfiGPsbWJhttI/0L1s
	 +dwZYLwBiCa+lLExwc3ejL1Isv9LF9aPAS+rB98y3hrKSZLpby4Zaa2tCyVnSK58pv
	 xvhT08/sH72Xxc5rjBcW4FfAK2mw6AJHSASRzh3Nt5B6Wny+4255pqVtBx8qxFE9DV
	 fpsE/6xEC9EJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87A7C001DF
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 19:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169074372874.29281.3346157189649311306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b80541e6d5eeb7f0f3989b199dbfa505286323e41603b1b4bbdb231259bc6f
Date: Sun, 30 Jul 2023 19:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690743728
