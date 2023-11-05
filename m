Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2B5168BC
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAUfpJMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86960C433C7
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699228096;
	bh=mwApwfTH7wEm+ZMBArvc98mk6R49KLGaHbkEP0P/JdE=;
	h=To:Subject:From:Date:From;
	b=DAUfpJMBVetPPuI2yo5fp9EABi1khuGotyOXouueHbVPNhnjfqo5H1Y44FwZrkTKg
	 Vsqv1J5C14x/l9YcTYMwWS5GzdUzU987LfSDZZymOdb8leNyNuQ+V3DWlbyhyUpAH4
	 FXXMLt8gYG26izARx+UKvUkXVL+0sO4lRcY6+/lFS8a/PiZeC04ZZ081lF1ZlhKG70
	 K+/KIU9kfX4GbYpLQ1xPL/n7AAxIP9I2wpI134UdHOaB3qBp66+J0vMC5P47goNr7f
	 uJ0pHSy630v1+8gE6E8NmqcoZ6d/19jdCnVV+bLcSuLvexkstId7uBd3gSq9OUf9t7
	 JmJWEPhTM0mSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692D7C4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169922809640.28462.14291315623765422591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfadf73394947a9a648bb41ec12150217177f7c071f5386f2c9009d0c45688a
Date: Sun, 05 Nov 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699228096
