Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07F4805
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FCEC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665113453;
	bh=PbD8HaDb+5PK/84DiRQWBAWbvRycggypS28xCaoZllA=;
	h=To:Subject:From:Date:From;
	b=mFWse3GRd75wZsClLpAOZmTTbUC76kIWFWCFa1RcbIz4YJ7+o+rGC4OaeE2FUxaDa
	 /wEjucf8pPM7ofFnxgaVHoJglh9i+i7Pub+gAXCwZBCSPDVb8MiaeCMMDC1OMjv6dn
	 THVMxDxAne5bcXfVBc8ZIdESX6FYe2/zGDfCD8nInAOzbZumf5k7nxbUVXARaM0WFY
	 9s7vJrsoRSeidy8Ssl0T9E9JnRi8nlIRsEvK7ylBgsjkN+btd32/5K+mV3zIF6wad1
	 5AqXmb0XgPMczPgiUJ7/fmiEPNPevrl6VUezZ7MQK1AWiLziEBd3DBcvwGiW9mC9+S
	 UzXoE5xS7G85A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A3A6C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166511345335.17419.6471379241408416621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fa7b652f4db9f220e8340d3218d3a4908ebdce402e3024749faa88bea942e5
Date: Fri, 07 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665113453
