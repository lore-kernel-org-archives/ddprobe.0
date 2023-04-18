Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A13FC2CF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 06:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20D9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 06:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681800545;
	bh=Wf2mrwCMAMWGqVAFzwBpIj9i4oZIAjNyxP0eoZCmrrI=;
	h=To:Subject:From:Date:From;
	b=GAN/zZUwnPE73G15HzA4OMFWGHEEoBc7lX9TkL/5e2m1FfP1GqATrtsVewv70jnx3
	 UR7NRa0WHW2M5n5pwk70EaXrMzenKxnK1L2HCRq3xw+1f5FgGZIsyy+ysNiq/0zlRx
	 mXWhDVmV5+o996cVg0k5KKn+/OmNKHEWBro58KvMCaLCjc1kf8aPrBz/TO86/GsTWc
	 wthMOUfodNtHjIVh7+R88qpxp6k9T4m+riNbNIFa6yFAGRakvuxx80G5nxn+0WVZ1D
	 ItQ8SA493USS8xrlt8QoismUxcC7x5Is7EpPNaZhYb8pJoCapAXDoboWBOB8pEQuFX
	 /A8MgrK7DZoqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9A3C77B71
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 06:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168180054575.2156.530206950106902693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee5d98de1db88f3f468a93249bc7434c008ade9539ad77a9cf81c5d62ae9485
Date: Tue, 18 Apr 2023 06:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681800545
