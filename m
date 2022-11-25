Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12A4847A
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7046BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669411254;
	bh=NRQLmw6kZBxPnZOrpqj2FgrLXjGfEa7JxF3vqEsLvfw=;
	h=To:Subject:From:Date:From;
	b=KXqa7MFSBnDILBPO9ysLW79iRuMWMfWGTDxccj/1YDxKCAWdR30l+NxZgpSX4gm9h
	 DvSXKmTvzES0OG1W66Ye6vnKyk7CCgCXLVD8s+A4f1Bbr0lshvJkqz+gyPzEBVOvsI
	 wEsPScOAOGWv5XgXZRUzb7qFdBtPI082EJjgxp1fWtqzbznE2UEkfyulN/29COVxSk
	 aYmD8vgOaNV61JMM1ZDOz207HCxexBVRPKlvzFwkxwTZnF7EdUUkT8shYvJbS7ZSoQ
	 HdDiMYoxDCUTkDVif/373P12snQF9Xxa8R27ycvMxbUkSO6VtcgU8Dceq3d5txIp+f
	 5kWc4DB4GCH8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57060C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941125434.17531.3101640326151119278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43dbb5788b747a534a4400470a9e72c1d0ebcf398cef834e4cae64ea40e3bd8
Date: Fri, 25 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669411254
