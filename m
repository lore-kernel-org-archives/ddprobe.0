Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D7C33DC
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B01BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669383054;
	bh=6ONgBHNzies4D8NkGySnXZpJbIbiJq4iNINBfCScRVk=;
	h=To:Subject:From:Date:From;
	b=OoG998/GWmphzHCqG2PzqLC8siWiq+0QWGuIGkZKZLlB3V9VktVm2NL2HEMfsvGXZ
	 XIF42VFceZ2LieRNwxz5zakl+upHHPNl/NpUP1FSsdOVlFk2i9WzdZGXorfnxuJWgH
	 G6AH+hM2XQT26qZBtKT+rs6qkqICgvlcMmLMbJ5wtc27t3yCKysv0Bz1JpAIfGSGjG
	 0653rOXM9JEk89N3CYA++hMgqcwlyYwTPpY/C1cUr/7+83yDkNz7SGK8JCbH1JiNL1
	 LOqdYXx2Pi0iJ1RbY5wKjCV4UT17tIgyGdYuqV6UN6CSdNUh0+Rp5hwv7rkBWM8EfF
	 hZ48daZ2cGoww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DC8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938305432.13610.6369364870063411960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03dcfc653c912ff675341688f62333b7f433bb6bc0e717264769f6b7acd1340c
Date: Fri, 25 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669383054
