Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C3517CB
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CCE0C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670996487;
	bh=fnCAWWUqn+mdgqsylYcKpyhXYzDOf44GWIAurWIO6EE=;
	h=To:Subject:From:Date:From;
	b=neyAqlbsZXcSfA1ttZS/Hb8RpYSbn+nsRXtxS4WM5T67QvPcxc4bf08JCuKu69QXP
	 d/48yfBJL15R2rg2uulGXbXKlPtPar5l28CF3lZU/iy6Uyf2kredr8Xc20VN9y6uYv
	 kZi2cYC+nTPW08xh3EUNUS2+Kw5Uc5IV758oj9IvdzdrHYGT3yAu3ZDodDKqNv64zi
	 opUPSaSrj3atUjK+5jksK+DYPT3ehj4RqGf4bXOzxTZ7V4EpYsKkUUcVJ3qju464Ti
	 jQTS6ZbVxgDAGUFQVEjl7MRMDYEFvgPktcnwgozlhLEg7F3Lg6Wjr6A6ZztcR7tDDG
	 ryQWCntDMsZCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 724B0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099648742.12997.13224511199826325484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1c4bee78e92031260a0ac30181fda3a1a2a3c6e350726138546b1e032cc5c1
Date: Wed, 14 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670996487
