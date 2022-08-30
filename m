Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61A5374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C1BAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661836853;
	bh=3dECFDa5dK2ECVS/cx6zg1ahmUyUss5PPJvpcBCiW6k=;
	h=To:Subject:From:Date:From;
	b=V3HP3Xhpown6kijR1YwbDhGQ3D2/ZpeiNo26LJwgHLy+Kx1Tnl2Siu7vKu9NBLO7z
	 gN6oyYdVwGKJccFkJB6tch0y96zlgITdVN65XbWK1/Pu3ZP/+pJkpvg3T3g1Hb5O6i
	 Xv378KRWVFGiB/TQIn9rESqc1Fs5TeX6vc62CEkaVDhFEc2VZJGyYabEfaPt79jupu
	 1BjoQsOotkeixejwGhKkap0YZtlcHSFEhkCV2t5fg7nSak4ZFdFloIT6oRmAw+qhKc
	 XAr9rRguZOCxwk1bS8AS+sr7BmcsQIpxhFb9cu9sQVMJ757ShGG7vVOFCa/5yj+YtF
	 2mPzU/6EztsGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FA95ECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183685344.31913.18093055066169767023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e765cb58af64551cc1601a96ea2228f252c41eae68030ee7e24dc777659bde
Date: Tue, 30 Aug 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661836853
