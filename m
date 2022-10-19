Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5C553BD
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66A92C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666219853;
	bh=YuoRtGkrIdOHyOpdD2Vp7NnN080uPr31jtFAZzKeBN0=;
	h=To:Subject:From:Date:From;
	b=JnbGXlAMW2BXHiMW+2B/GISVW6sPw09W4zhqlqx82uuCh+HmgPjohBVeDim1O7R9M
	 IhF/eTyB7nOFWpykEvO2hgw1D17rQHe2mO4EwfufIYXL331sO6cU1/YIVIuoo4cq7L
	 FKXEdbfbl7Ngv/ATuaMJmp4D3pGgXhRtc3vTCDK1+aI72LnujKm4sbb2h8vbivvpYS
	 tYrA1F27IbYyZIM2qff6ZMqejSpE4QBLXxp8d9U/6yMtgaLFHmXzlFc+iVulOchsSI
	 smRqjSpI6LtJ4kOq96UD4C6vElIi4CXFFp5ClWzKf4i/LDWTSDTUhJi3Y2bzxDjwCT
	 WHNfOfySdWs/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E2AC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166621985334.5355.4089878667279893353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cddf8bbe9c7420b501a4d25f9d86f9e6795a2c1f019123fedcc67db9f42d9a
Date: Wed, 19 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666219853
