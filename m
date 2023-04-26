Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485DF1C2B
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 08:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 017CBC433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 08:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682499426;
	bh=TJ22YbE5OvAwDOJfGejgu4wBJfm6ccn9pT4oRPV8Aak=;
	h=To:Subject:From:Date:From;
	b=rLF5/zNKIC9+kpeZZMGQD3+h/KAq3ZOtYOJP3HPKK+kDt2G5D+ZYcV9GmXM5JPGoY
	 XC0SS4hZVXiS5Uu9IHk6CToG2wJUADxG4SADJjjW9q9MIAfYfphj3ZqGkZ2onsaxgY
	 wTDCj24G4mt292z7IpPRRZF1BSf62W5wWgTRKCGCcrr1J1Dj0QbndiplU8W29ISk9p
	 a3aE/RFTFJzEHbzKiYWJq3cDl8Sq5L2+FuXr0QgrRQbsOOzcmcI4gJua81TwHKyyiY
	 sE3A6jNKUwIPMtd91tfJ72cnY/WLa5PWRasrpodDcQSWnBMJKsUmUWFzegoeJDkkuy
	 VnbIe6Gr3IW4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCAFDC77B78
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 08:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168249942577.28176.4260908164937790572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a2352937456db05eec281cde0592ae4d1119384907499150f43d4d4d4dea25
Date: Wed, 26 Apr 2023 08:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682499425
