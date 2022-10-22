Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05E2180
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9E9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666398653;
	bh=jFtuVpiSPNEPpP6vVcQ+i0t3G7gd5t6iqd8IdF6NfuY=;
	h=To:Subject:From:Date:From;
	b=QxgbDyI1MMBeXVyGULe6cl1aZiq1tdy3VqazD4FsP9ZXF/c0UTWdPnsQ7PXsI41hL
	 h7QakrOMk4eJswJHru37eDxH0LfGDic118KDAenkvm1cXrtnDsTK9CmAB8+yzoVKts
	 QZAZ82JVuWHih32K1uQevWuYO+GTT1Q0vM0Sj5s/zBrY6eB1y3wazjrQM8i182kqJB
	 s7RiGvMiLFTik/nbv0RTLHNKPu3H8/tnL6FhDJmRp4KrffdFMHO2e9B2z63HJWVtCy
	 ANoTjCntyxgyEKgskgahbfeUy2x5WpqCn/c9IedPoCnP3k7s1V/YftOyiHXB0aYZOB
	 pYahgQ4iYH2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544E6C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639865333.5770.3051184854471400098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040e2ec5496b061b42f2b3d483fa263460a0a5bf0a1db64f665e3221fdbebf5f
Date: Sat, 22 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666398653
