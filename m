Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6040EA0
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E94FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669162254;
	bh=4NU2luoi0s2teV6IXZIJ5b0qA20jER4qkzQSSMKT0xI=;
	h=To:Subject:From:Date:From;
	b=krkDzGHctipCN4GS7H5uWV3bQvnneFg7bFNZrafKdf6c2KmwLcftc5n9chkEBDtR/
	 14V0wcD7Qc3b73eH/wSv1FXAZbZ3XbuLbsqd2WFNavEnw5rGl8Z0ncFiSsF31KMDgc
	 Shnx5vj47wef1627c9YpLZHoSzKx6uASnyvvK2neHfeP5Ba9i7VkL78kA+WeIKf6kE
	 7kccYWNwETUuAmpMif55AJfjye9VZhnRNbMyeBqZraKp6dZPTU2pH0MUJdulnGHzIs
	 37fGTTQCVaUXT2QjmhW0xpUmvLgMH8NmCvidnx68Vj6bf0VAUl8YL1Wta6LHAxTG6d
	 Y7r9pl7tYHTfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52243C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166916225433.23837.10279182644898148458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8566e8b23b431bc1368fd0e7460dbc135c5dd0b22d7a38ca600ce9e3947d7ae
Date: Wed, 23 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669162254
