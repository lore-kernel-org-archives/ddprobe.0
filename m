Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37826AA5
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCAFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663286453;
	bh=soA6zh6SAO45QNzCbraB3nQwNXkScKVLdP15RY2Ic8k=;
	h=To:Subject:From:Date:From;
	b=K1aAb20Xl+c1CP/d2lulMAgq+/5T9CRSRzRcgzcKFOJr9pIs/J1ksQ4gIZRePLXoc
	 OJWR5t6fClyDIbBA27jOcQawkBi4c1pC1zQRCs3Yy7yWWReZ/p0YGvevpiNmaUGlZZ
	 0ABlC5nENy/qhr99RiWRe+5LDE0MRGINATXHcswMufzdyQ8B4q340BFX9mvzVWiGV7
	 +Bs7g68j5mhLOC+DHe3q8UnaxnGNy95DfESJkmB5xIS6vDtzPK/gyaDNbUCE3BE+bq
	 ab5J9gfFV5IJX+Adnwc1Q6WrSloXaIzFgkUI9DquRcN5gtXoRAT46P1/YD6axeXJ9K
	 XMdMnkkjBCh/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BAAECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328645334.6500.1307659243448333839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356a89a0ce9cc9d57435d1c97f03811b02d46af6423f554c3ddeaafc259a3f64
Date: Fri, 16 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663286453
