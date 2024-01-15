Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15435179A1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utRMgW0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80054C43390
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705330696;
	bh=CwF1hVIoFVTG9c+VfYfnOzzLkabdddo4JWmNczOiXlQ=;
	h=To:Subject:From:Date:From;
	b=utRMgW0ayLqGgcCxDQTec+oByRyQW86aAhjEDP57RaSV0kaAQYpdPLwPIToli/L4E
	 3sC3EqqJReITru1nSDepjzWmDvyndwfx/4GTxxPK64bHMlgFZZmzqJr8Ng+AtkrPiC
	 JcACPYsOvhetIka/GKz2U4b8XCgS83dNh3mKJAcAb57Hq5j4nr6t8b+DZsrPLuzr4M
	 sdhngLB1nnP1WqmfmOKDGHs49+9kczY0mdPIzIxjTEtzkUtI8QyzFNLip7uLLr6XMU
	 RHyLPBwGZIaEbfm8R5XWlqIpfZJFswmMymZyMGUrmjwmZE4nweLC6bVuCMj2aLFsWi
	 N3OJUOa+pyCpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E6EC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170533069640.28604.3367813630682216777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2fe778da1101ac1d9bdfe05afabc2615692ed12c27b1af63392622d0a51509b
Date: Mon, 15 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705330696
