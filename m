Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB9C24F4F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748E3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668188454;
	bh=re29dPK9JGwpFMdURdmDSnlrKTSrz6nftQ7Sx9nDX8M=;
	h=To:Subject:From:Date:From;
	b=RAVnA+VMt5cNl7aZBCAAMVI0uNS99KfVHnhxm2e3snBO+6BWm7PINf9INOKPqv8PA
	 M87UU8obZ89/w/dRxS1GD+qFhY/N7kVMK8jYawAuTb1G1kgEGqWrNo5PpfG3Go9wp7
	 kQiWX+B3lzku1Ztxm9Hw8cGUPLms/deqf9m12PZmX2PLlOaWnnu1EB4PyAGx+rLNtK
	 246bBKFMCMOdRJzQrnQ7usyRvxuYvzOwqm+0DMYLQAizW+u2gKjpnR+KroF9vp5+FO
	 +vV5VJ0tG//5R6ZJF10JDUQHr2By26XeRrzPPV8dSoBe4PtcTxqmBndJhWb/xetRle
	 uXf1XU97cKnfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5086FC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166818845432.6830.4037130117244978850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e6b3d670367fecb8d543906dfa09664762331ac458a458f32bc75bf00285ef
Date: Fri, 11 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668188454
