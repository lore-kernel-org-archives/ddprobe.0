Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17FF7B
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73AF5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665654653;
	bh=+lWeBUE88l6AHnX4ZSisAC1xn0EbqrLK2EzTcn071g4=;
	h=To:Subject:From:Date:From;
	b=CWSibQd4GVuK346o3F7jM4t9uUPOa4vkdayaUMXwk9+pKQA7C60XbLCn6jBz8q7E3
	 kngN9ob4A/YAN+kgBTze1KKQKyoaCeKGfxckhFpheJ5JZKYqjxfezliHcybqT18qAW
	 TEc7csJ9fhNq/x1fwkG1s9kmjyHbIwXQ8zc9K0mElt3e1b7XmSjleTAqAQ0f1Y1/rZ
	 P/jFrrMvMz4bzBr3bEnjDQpmqLk80KSp+TjNaNEEcd1ApvPZoL1nVtSZ3cP6wNce6l
	 qsDcrf23n+P09wcaQNKpkDa6lwuPljqb1YRKOOIDp08csQAyGSZTmWMGpcZnGApGht
	 zerODVa6sRU7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5769BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166565465334.5956.3977452313579589001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98528a3ae3ac8c2bf7073530dfc26e365d3e3bb5f2a1411b5c40ddc461287f41
Date: Thu, 13 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665654653
