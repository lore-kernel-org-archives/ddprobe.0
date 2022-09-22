Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B906428F5
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724D2C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663839653;
	bh=c26YsAGOivLb9z0JYLHDUwA9M1vjB0sId41Tz/RIzKc=;
	h=To:Subject:From:Date:From;
	b=IBxa3LuTDaQSrUj+cC4K2ghTJ0w+FboJph44PmFxBR1bbOiUDVBpYLMcKO+Xqm+vS
	 GHB0+7K7BdTvWby1OTyLlLZQZ6H+1tkZDLd5RiLg9eUWK1vY32BUOC/TYUqpv0gyqR
	 Vm4TQX62TGZpqEfa43U5dWJDbKkB5/rY/jEvJ8khZTHDyivkJI+3IuUHaRES4dp3+a
	 TgExOelQ+pF96Sk7wM6n5qAgBXbdn90wUcAfBjP4fRm1+Svg4TUHMJKUyBGux1wtDJ
	 7VLhykvwy+QW3fGoL3S0A7sEhU2PNvEn/VWLcqfvPZl9iQWligSZSvNGprqSshHGsX
	 P2MVK0zy9Dclw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B3BC6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166383965335.5631.3599620518675802799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552bc894aa38dad5e8b88f29a3a5c92db1643514f8bc30ab207d0ff0400780a9
Date: Thu, 22 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663839653
