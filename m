Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153BC10EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51F9C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671442887;
	bh=q/rkvRxldO48yc2vvoy4CaQ40PT4XrxavT+aDHXMZbg=;
	h=To:Subject:From:Date:From;
	b=BXB3PLHBMqQOQgYUm0KPhfiIQmLyeuYWqxq+RTkHPcWEE4IYrYN60OBH5IaCnEWqN
	 wCexYrOg1D5EESUFS/UWFXUXa4d0IWZQWbokYXu3IebKpu70zphJzxhQKKcmnwyOi0
	 R3M2StPQseQLWXjarjHODPd1+sM2mGe08TXj58l/WZnJfLmLDbP6o52zHGjJkLgO/B
	 0uhp7BS+wqeaWXw/jEc6yomfjOppYVgqRESBmD+usk/r5juczh2iFiZYxUlsrRQ1OD
	 q4QRuZN0Flc/4yIfROwou4KLRg5o0mZWl8xncJE68gAV5gYGrMzBP7Dci7l/eX2OlV
	 SnU3/iUoUhiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971BDC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144288760.12445.1513526782596330532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84fbaad46ad29e7c0e819e6c43d418ccd7375aa3a15753e4c60c666719e635af
Date: Mon, 19 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671442887
