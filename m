Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A5528F2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAA6C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688028788;
	bh=ZhNBk8b1xW9Rh+T5QtLRtUhMBKX7w5IB8C6JV+J8kQQ=;
	h=To:Subject:From:Date:From;
	b=QJqzu6mqPB+vrk1N+MYTiRSbMQc1jYc57KxzjInu87UH/63cXdVuWS/Q/9QIBaRHY
	 rERPr0lmLosGYrRyO9JYRD6DLuQIcxHC9hauLWGs/myncGfjDxdcOnAt6VcQvKgyzb
	 3suMKwkpmQGmjrLNxh1GzVamt1p8Hy7roMCUaM7C+xoEDhAnR3tczRKFjs9TID5Ro+
	 5+/XipAN8pavHK90gve6bMEcS8YFjsJzougWP/nj0RJn5ywb1h5pypEvrQ9AyLu1Rl
	 8ZjQv/47/8VPqJKfMOGHja+sDhe2tUOXnJBkF7RE9jQ4Gx4KQOuCRTRMqXeafOszIR
	 Bv1M1ZpP8Mepg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE41BEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168802878870.24441.13043351167642246068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9348953ffd83859c36abef9004dac9e29f18318d5cf02ccb126d1dfec3b1e9
Date: Thu, 29 Jun 2023 08:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688028788
