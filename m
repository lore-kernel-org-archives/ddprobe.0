Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8511373
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C154CC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687853588;
	bh=nGVzVvGO9R0v6q5k6fxDCG4SKazSmjCaRhpPD4lr5PY=;
	h=To:Subject:From:Date:From;
	b=jI1HrF3Kgex2Hp/65G1onp7ZLEWiKnsdBWKJlvQFhvFc4/0yci4XzPr/q+T0h335i
	 OF1Hfj+R2UsMqCeOND2IHdGsYR4sSrBcB6bzCI2xrChEGTDhFXP6ZFgplg3JDo1H2b
	 7R03+71mNh1q8E9RP2aqAhdRwuROgM/t8isfp5IAt81qf0DfRXAjv87aWcgSJbNMFm
	 AOun5Krd1mLsHDYLJAcChaYo0fFxUhxll1s52zGrzSmAySbqf0r0t65hbV8qn4lpny
	 P9bxpMfb6dTZvSuPUgOfSs3NvKUS7GDCO95Mg2Xgrl7n1uKG7TQW8Ckt4X1CoA3xbQ
	 Fa/to7yUKdIdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A713FEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168785358867.10139.10332471538711171293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb2b6aa81a859be83499efe4179a4d123d6bc21c25014fcd22a5e775284e132
Date: Tue, 27 Jun 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687853588
