Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D29EC3
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 02:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F94C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 02:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686537185;
	bh=vJiT0x4uiOXRoGmR089aiNo6iydvkU+dWKGIKspyJG4=;
	h=To:Subject:From:Date:From;
	b=pJNTs9WjwfFfemQoleFM/ehIBiQeFfHO+abCWsmq7UrtAxy7JW8uYs1EOknM6Qopt
	 0MToBcTSn5auQF58EyujQm8gYSYmTK73t166VjM3JC8+oGfpGcP2gnHTC18pzV+V9h
	 6EdGno0QTt9aEiDhKA96I57pXXk2yzQh6CxIwPb+BMdwDTGpFsURNXS0GaRYhml6N2
	 ZnJsHVwqxLTuTVN8CqznFOl6M8wO6yUhD0hwNUzwp04U8U0/Hru+/K6nxi5mB5AlYO
	 E1KzkLhnThCNTtmners7merer2UAky+M+8fqrDsiy9S4DpZIGREX4nuD0WALyErXhg
	 SLMdwtm1yEvhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E2EC7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 02:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168653718580.469.10871901604548285166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e592d77501594b13b43b286e6f95656116be10944b4cab21af98068486f80b
Date: Mon, 12 Jun 2023 02:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686537185
