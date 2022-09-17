Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9537C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72ACCC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663428053;
	bh=TKVcqt0YfcJkbiOs+xAYbxvgkAKjO4DcG3Qv/W8RUH0=;
	h=To:Subject:From:Date:From;
	b=BM19/g6cgZGDZ0JLdGV3UohrSayW4c5GW45aEpaZR22fz7e7kkN+d5fya3OcluLvo
	 emx3QjQGTgARle3WoS9w2PdTMSbANbddKzT3czMqJFga3Xz3ODdxtptvTuUxvTnT11
	 z8gITu90ZQhoJPrWLJclbhWbmNaUDo8C4EFZhSMEq9JgUdpVzPiVkn+YsLvdT/V2A6
	 oDukPqqqwN/DSEGjPl8mKMeLrsb4+pXDDhrtI/ad5F8jEkruOo3d9XRMH4cX/kG/bT
	 LjEEJhNnfaf21sJdt50vB0FEDCmTexqWU4EQwJ/k2XkfAMVZVnbasfv16I29WVNbdz
	 lxzKGk1iXH1/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56273C54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166342805332.9091.3107671448365638001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd5fe7150c7e1e1bec4ff3dfedea1d81e8708d52d79b84cdab69dd672f4be85
Date: Sat, 17 Sep 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663428053
