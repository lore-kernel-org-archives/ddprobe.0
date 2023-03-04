Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F201FCF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 18:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9737C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 18:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677955625;
	bh=PDudPTFwVxvitxzvv4nHHfio1NIQZUWii1BrbFSOoy8=;
	h=To:Subject:From:Date:From;
	b=mpNTXd4rWqWRUfTcTBqOi0ty87UlpwKhEUhZImob4P6ZD3gN75sFJm2A5lNuGuKu1
	 YUiZBTFLd6Bx2U3Ey3vG7+Do4oWTAaLMXBidBFz/oLRx+lOtxH7EaLrRGYif0ty0J8
	 95aNIqU7F4/KOEhEEdoWGrWXPdrN2fILAiAwbt6xPnV0WmLHqc+AYvt1OqmtTI54Gy
	 K9yplCKwGLsLE9rFGakT4yBU1Pjn6TEuW2SETbZWM/1OMWPT/x8/hs/2iVvc/eiEQL
	 QNv4h5FokRxvR1VIeDtr+ktLpB0vymzaVgtpL8bOmIoAAlup9OvL8qGKnc4UDgYiPn
	 drg1MtCIFt+Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF0FC64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 18:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167795562579.15760.1814630219770129129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0168d3d94a9c6c1a465378b6c4d11c63ad920fdd0d0e70c820798f00c31f0c
Date: Sat, 04 Mar 2023 18:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677955625
