Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549687F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 01:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8A2C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 01:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687657388;
	bh=nCII9AoaAdpspGKb0cCRx+Kj5jDg1jn9fOU1hmWxvJs=;
	h=To:Subject:From:Date:From;
	b=IOD9LbJYOrEFjBZT/TDPKh4lMuKSERlHA2oRqhffdC8aKgqjwEzZ6V0fZm8+prBML
	 n7WbixG3xay/PMcmtyaKn0PCGIB0+jTTYSoT1q0goW8RcadPDe4Ka8Go0BR5TzGn1Q
	 nLiMIMdSdSrDObMN49IRebpVFlJ7uII2J0MEimbpmpQv4eZNxndW9CFUiWV5OVTmLL
	 IwnI10z90T0BIEMDaLPC/E59oDQWgeeWE2mmEtTyL5vfyK6siMI+8175KImMY4ubGG
	 /NyRmr0CYwfAadwhY4v5T9w6VwqmunJ2th+C/grJcaAZIURNtZqjsftiL9ONIj8ZfO
	 v84Il/YMtWiwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A4EEB64DA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 01:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168765738867.9209.7857340356380268679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ed9377e49d933e11a2b3b967115b2555a29ab6a05b895dafc64adecc4f49b2
Date: Sun, 25 Jun 2023 01:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687657388
