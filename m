Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3837F3
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 07:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5F1C433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 07:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680593825;
	bh=lW7ZbhEy2rBXbTkepGs/MuRISGe3D8nYpIQfTeSN34w=;
	h=To:Subject:From:Date:From;
	b=RH0hsH7Vxz9V43VUnFCQwKqRBMsT4BiyboDYba8DKjFcuXvIXdmBgN7xv+9gOQaB1
	 L/9svDZOuBLsiB2I0k9zSu0QmeHgXRt46n+kB1B8h4+6mZmpHTwS6oBP2BPyHVUr4L
	 cdWItlORTkgAQCrzAdXuHdueg3eH9aVeJYHkyfPUVbu8rEjVCACKHwsF1a45wEMrLk
	 NuvFMt0MVFg4T9QzzOg7waji00xrsBB2IaEjjw8Qe6165CpAnllgoLHgWr1Cl6ZdB+
	 B6dIxOjFUjVNlrjaU0A3J5+QMpx5r3k7s14o79H5c5X8gCfMBN+vrBNtBOBMPvePzb
	 kHiOkeKNukUbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7F7C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 07:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168059382576.18705.17713836451219737552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e584f8400aca9c9f0e15c1d5cb72c548f18e50b2e08f3a86dda46b5f3f038e
Date: Tue, 04 Apr 2023 07:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680593825
