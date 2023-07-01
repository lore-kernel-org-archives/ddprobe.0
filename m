Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBA8D534
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF177C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688240648;
	bh=5lAJ7AVmqm9i8dgobvr6ahrfq7mdHvHP0nX+s2rdtpo=;
	h=To:Subject:From:Date:From;
	b=DD3ukAjoMIl5eROaSHiiXeTLvB01A8g7+IHCL4SWLRlxj/sW8EbYux6R0Vt0+gGKM
	 S4PaSWWCUfWyhodwRPI+KBjNVBiE8vFm/8rskgSpCdG8RnCSTin9sR7lLBjWLmzBTC
	 c50J3XGm8NtCFxXuJ+EpTvpdmpC6bpDwttBXdl7f4rvzthXL5FPxP+tbHPUog3hsG6
	 8qo5MfbxglzmHlGZVds6SZ16wp74ONJW10rVFoeiQeSjnh7gVMh6Pu6SLfELTQzUBY
	 UOfSGGURxpVqZwdU4h3H5jgcZyS+hJvnlExq4QZ+Bde3RRQA/1hWQ2ZuqSbiHLv5+h
	 qLABt47FAUW1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B424AEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168824064872.30315.17953467963105248337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2c114cd7eba61f8d1643e609e706980570a10e54e4bff5ce7ceec0e0ad4b38
Date: Sat, 01 Jul 2023 19:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688240648
