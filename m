Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFC07491
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF13C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681515185;
	bh=XbtQAe99YkzySKywcnzcTT1t04WElrSA9xqfMZmSKAg=;
	h=To:Subject:From:Date:From;
	b=OC6Z+BHOPACf3okwQaECIkQgR+6HmlEM+aHV5Cy2WGrhI9Xfw0NIkYaIXXbimVJ2R
	 kDbV+HRXGwd0lMRf3oYXRQRkP2aQ6sadbXP2fu+EoJXteO5JCLaaQCX4pomgMiHgwa
	 MrtQbdBuLBBClOxDXc11c/zma5tMfEEYtlP+XRS/3sf8Uy1z8zi/b5vQEmiwLZTi8V
	 VMNMcVhpipBzrtPV+0dMcqqqmYzed3SJtjEReugFtyov0P4wzoPXMjxcYspPX5luq4
	 5uz05Gkn4mqvs69M0UslQpeZO1vVkyTZR7i1cvrIX8A1vBiIndV8IOxlSbRl4TaUG0
	 oKbsSFqx0I8og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C420DC77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168151518579.8952.18272063255778808468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8651b66f025776f72b299739c080bbb075e6ce382de38b4f3092a86c50a30b
Date: Fri, 14 Apr 2023 23:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681515185
