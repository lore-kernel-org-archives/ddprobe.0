Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D150C1FBD
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76253C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665749453;
	bh=9HzjhNfRggmoWk33VyLS1Hn4HMc/Xd2tRgyvRkEF/vA=;
	h=To:Subject:From:Date:From;
	b=sFHhzJowmONq0xopyGYr6lp/xZftMWdkj1P/T7FeRiW/aK86NSnkFH/NxUpTxv6Zt
	 5Kemh380uVSgk+yaEm4S5pJ+PrizNBYH1scVt72rzRaalZc/maMV8/0le0RIn6b+Ml
	 sISXK5JJR6gaZZMwkd6U68mR5byyGScE5cpP8Tms+MC+XM3h5VNM+3gH+I7CxROrwH
	 05cHgUeKemzk2y/VrUh8DKE1yQ/ezHY8eGGCPrIGS1D26y+8VxqnKAGYUSfwt2KGw9
	 yT5f6lZXv5BbUzSfykECzCqJPaM5JozS7B/7VwXrP2CQnGj9581ZdEJG1J4JRkKxOZ
	 Ah7CA/yyQif6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537E0C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574945332.9896.15282708589802616208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0545b20323751258873116e54dbc39eb8db8b76c24ffee1e55742dd23f9f61
Date: Fri, 14 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665749453
