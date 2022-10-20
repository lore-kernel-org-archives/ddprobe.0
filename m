Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA62523BF
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C99FC433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666250453;
	bh=d/o5bNv279JIFpwEFl20jPssEbPvHDO025z5anlG7G0=;
	h=To:Subject:From:Date:From;
	b=qOpSA7dqu2PZ4gtZKKuWfrR4hLQZDQabHC3WeMZ+quqfju2jUsEPJ2n8Wq1B2aCzh
	 /ICI6t+9huca0pliaqQGRNtUV7nHz+G3vZ3OX87IsTvcXjLYuvA3OwxJMu/FPC0S2i
	 PhUwHVEb1PjgP5I1d6TODBHbzX0cZQFiAUbGoTJudRR4yIPW+WuKjynHzFsn+fuZPr
	 AzxFR09/oWQTy76CFr3krFYNPK5pPUSJblmMmZ7kIEwge4ziuVoB+K9zIAIPO/H9Ab
	 +sePwYlTebi8GOoQ3ZFgNXGB/JyHhZbZEhgv9mTjgCs3eNm4ImN6ZUgUSKeCXLJ3Kf
	 7MjvhjXY+66tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52115C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166625045332.10846.15505256472781934524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b848d354de9b5ae479c57065c82f08ad6d8c8ba016ac69f398b5385a14e590
Date: Thu, 20 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666250453
