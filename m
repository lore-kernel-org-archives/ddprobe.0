Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B444211F
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 11:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69C8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 11:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677498365;
	bh=sxUjQT6dZCJUsIhuuVY8Fz+Y3RE1bxfgjazpVO7zl0M=;
	h=To:Subject:From:Date:From;
	b=RUg0Fc0lHIfh3fbMks7jDVpiA5+PCDlwYzpHb7fkxiHW6/4/QO/Klw4n1F0DawQz1
	 9CgbWj710+ydeGaLRx3PRAx/FN2CDla2cVP03bynhskymv622ddYI2skPhqml8kWat
	 rsBlaKpEtvu2klBstY1kUvLdGIUyH2GaTq2P1A7cnrDZ9Xe5zBGpYBboA8DlwheEzZ
	 aT4xNYY027d+4hLgI5Aivs75XbcMwV30AeoEXCIxrNquX8w6sGxHWAeY3UzNvVdK2V
	 nEVW5vJLwxQZUGrnNA83iKhDAcSk1QewCHw044FWh1R2X/ZjXDpTCZ6Yb089LxfIOY
	 uZSEoeIBqVJ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD390C64ED8
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 11:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167749836576.26378.3993992859438383472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d5ec28c04ec049af3f7f1ce7423db06d29d0624630e59f329a2459f5851727
Date: Mon, 27 Feb 2023 11:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677498365
