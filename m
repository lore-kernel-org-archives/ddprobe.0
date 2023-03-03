Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C961FDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 10:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C4AC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 10:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677840965;
	bh=lGxPbpJkpLv3aF9wPVUjiT/4kGi8X0TqDlVdPstLRfo=;
	h=To:Subject:From:Date:From;
	b=iWIa7B1cc9XaZKdK+wMI5y54W/7QKToLFlirnMjE7umyCutgUSR8np8BhD/HKigDa
	 PXi8yFkWwQb4aYvlWsdhErcmDZDnn+QmKzjTBU6V+iLt3hcCqGEXXo/btN/dJ2t1hw
	 j50IXhwiWJF39pjzfU5RlwnKy/HDf5lo+Pxa5LbivWxnWhIFm/YL+/PEEijxNIs+7M
	 PHFFB4v2ocEpOr4g2Pp7RoXV3u8zWG61e6S7FlrLmPqYdpOlJRzMq48fAPmMks6iwp
	 lJR6nS0LFTTypn+W/UNjFJVI8i7m2U4jAFnmkO3v64/iCbv4oMjyp5h1gpQOsEtnXD
	 9T1ly+f0Khfgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFBBC678D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 10:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167784096575.18470.4705930037956809565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f03d074b959af872f4356a0bf1490a0131df68987a9a3ca7a6b6aaf3edac77
Date: Fri, 03 Mar 2023 10:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677840965
