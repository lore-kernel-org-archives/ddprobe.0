Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE9733E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD2EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661512852;
	bh=sHGPmylBguG+Uebvex2Xt187sEzdqQ/wfDQxjrVsLmw=;
	h=To:Subject:From:Date:From;
	b=WaeUS6EiyIooaJxhGhMBgz2W+bqEg/N2zN/VeGiIHV0b9Yktg+sbimdY8zKppCfqC
	 xG/CV1Y2sWaJzJi2SnzxbdpVI3/CnDxmzkWZYXE7/SOgO4uiY9I0ngMKe4P5SVfVV1
	 4G9/lzo8NnDuWv+MG78Of7vXv6SxZad9E6iBcPLMGoEkzOzCclydsJrJG0V1vvGKsw
	 QZ3GUf4qwg9UqdL3oQHt1mfzWFRMazihUfjraVTg/84fX8Xxjbux3zWsNwlituxEsf
	 Ai/Kl5R0kYm2PiW2pU84OjokZzNdY70QBWAXXjtvHafT9RKHO8JF/aPCzLhvNjcwgB
	 g0ZO8pz8JthYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636B1ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151285239.26253.14803199767970822518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0865f737f49285c70116009383ee8e84a0f7fefafd84d9383c6d0521ee174142
Date: Fri, 26 Aug 2022 11:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661512852
