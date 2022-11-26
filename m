Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE032196
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7475AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669453254;
	bh=NQWbZZ62kUBipm51+LP7qQtNDZzQIGoG1cNCnlBumNw=;
	h=To:Subject:From:Date:From;
	b=bBFBoCrDiIMu2AreXNUYCYzTlrcKHftgvaKx3crpZPSXDZ2C4l5Sszm5ATkoSRMvx
	 RzFYJgtwewG45wK4/YCt7i5aTNKgDabdH5v2TSdK/8+DhQck1BOMLaBYlB2fU36Ctb
	 4Cp4YKJiKXqXhVyswkK8cE2kZBLRpuTI3E+bKR0tyQH4HpXGr4GTiTpuyH/y6AWKid
	 bUGv0tsKbyvUeMmqD15e08Tv7tZCkIEJmfBmX2pgRbfOGVq/tNGF85mJFxGn+/xrx8
	 telGIk+0pBnnE/lBCYYen666SYKn57VtE+6dmuaIgiZrnv8Nqa3vz9/iFrC0IUX7+j
	 F3dtKn5wR4BCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541D6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166945325432.21656.2562795630211114260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b20df6605c2fd59cc8cef6872b0987d43738998a5f5928b3aadfd4c4aafc1f
Date: Sat, 26 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669453254
