Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC8CEB17
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E55C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669511454;
	bh=UCtlDEJAaNGrcxer2CmXv931YjD2LpmrWek8b1FvH3I=;
	h=To:Subject:From:Date:From;
	b=HRJkvEvyw7GbkBVuL1cyy3U7ovIsgHUE4U2hxL+ENHUKTNAD3US4L6Y66SiBGceHj
	 qx3WCkgVLPUOy+CDqPXTO1t9uIwrGjp+wQzmXIda3zcHF1GV+/C6AFsfjSOYajBnx+
	 Xg47EW5pSvT49RsJQ7DmwsK0trrxXrqFQewr53D1hl5esaM0awSW3P2dGB3uWUkYAJ
	 uY4Ho4y7M/OFvPtCZumbnapGl+GWJLYGdnhHnH7AXgpbcuXQ/7yKY9UPJsqyBZp31v
	 ytNB11V638+IovdLEKrqJihu+1qHrufZW25StJMrTNzfDms78Hfh89u+vIQV4K8N+g
	 W12qEimLNcvQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BD7C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951145434.9036.9147974284415828753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674a325b111c449de2019dd40908c217a9b09ba2417e16c33c5ebf6958a5ec1a
Date: Sun, 27 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669511454
