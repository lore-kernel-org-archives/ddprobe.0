Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD29520E1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F218C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671862287;
	bh=Z/ewhgQVMq3LhLvwC68IiqqQ1lOI73urut5BXT5Aerg=;
	h=To:Subject:From:Date:From;
	b=i+r6soX2W7Cw99C6bb95THzTemy1opsvmC0T4OMU5y4SDzZmfme0VMP8gL60GMtvC
	 51S7p9cBWw//wS3V7yfeuOfjDq+VDI+Mg7jc8368rYft0RQiCX5wzBfXtQtQI58OOU
	 +Dxvnn6+zLl/E+4lfPvRUA9so2Nw9s5u5Nb6qiMsgVvUV5BS21l0KKrnhcwdDmmOaT
	 TRcZq9byoWkr8oVswY5cupcteQ4GfcQmu21Sn0zUCdAXvT83dx6LMzCJJU1E0mGknM
	 37qOe3/2bs7GAYunbIPpuMg48clFadNpe/qbaW0bibk5Pf0IdFMf4QAnp7xUErXXXT
	 h+2MkUhUYH/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641F4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186228740.9058.14145515483405430234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d71e335d45fa5036073364bb9f73caa9b22b26f48a9af7c5d265a81a2a0f648
Date: Sat, 24 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671862287
