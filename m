Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEEA322A
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F36DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669729854;
	bh=7gAWLfD1v+eE3tjlaFVCsaLX5cbrWFMoJuvuvhZTpRY=;
	h=To:Subject:From:Date:From;
	b=b4I6AL4E2cq+0KEg+DX8Uuz+cv2VB9b5/jVh1AI8ioPH8sZm1sL9CO8Sgw12Eu0m3
	 qrDpHw3gaSKa9f0d9wWh55esiE71dhS8Vf/DdG80K0kLWbiudtPFEDIGSl5tTHvq9F
	 odeDqwcuHW6SU2LGDmxhYXI1LuJZOSYeIDazgG3eMbAzsYMyu3b36BlsSuE1Ne6EVJ
	 e3VAd+08DkKqnI3fvnfxNv2R3Q+p0VXp7snKrFdgc8blBFOeijxZRY0M/UWfPgYjLA
	 XFvV/ZFeZLffUZhpDsrNULMjwyZdO3rRwOPH0R0clTojbrxO6fPFVn9ovv62asb9QL
	 PBE5VsRqWBAuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520E8C4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972985432.26995.16491369544180015215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d89e6ac28e2efd275081f93a852a86142a1324789150ce0685bd2c15e7a493
Date: Tue, 29 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669729854
