Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6261846
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXDKmyjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D40BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704242896;
	bh=uO2Ij0OEKImZU3gVx8WC+wdx/w7nT84bMtSmzHNHR5A=;
	h=To:Subject:From:Date:From;
	b=lXDKmyjQEFGV3PpntD+9GL7WPfWLgWxuwiI8vuJG/S89EkddtTBMSBRWvIu7ye+Eh
	 EaCGuObm/ZM+3xZIv3RAtZh5y5bzXQ9+SuZMN0sjWlTrJKAuKfg9gphc2QOoqGsCf6
	 tWE8b0KAUwRgo6QyPQmGXN7+ZRZIBW4eBBzIRI3pqa5HeVxEC+slOXJTvshpbK53oi
	 zKRy46+1a/UDvliAYfhInoe/h97YFsmHfw37F0hKkWiQTkNHV31JVDu0/mdtvXGMXK
	 SKyz64DDEo8N+mTCIWuUNdRDwYO8eP1VESIvW/jVuoM0h6H7s9ktkoQAzXzfJorPWB
	 9Zts0TLMBo1eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E8CAC46CD2
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170424289648.17395.12740425288638782793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710353e1257b786e03323e266835b663d61b84c89492a20c54f9ddd019f28c4e
Date: Wed, 03 Jan 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704242896
