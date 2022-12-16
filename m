Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71518BFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2CAC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671228687;
	bh=mI9Qep4cGPlXnE9t9akDhlc9GDFVXXi/5T1I+dvfSUU=;
	h=To:Subject:From:Date:From;
	b=Yfcknq0t1sz70M2e4e3NPKvLGY9+D8xcr6CsqDn9/jvJjNLjzXdtKTJ5hYY54VrRo
	 YVoyMEqPCVvFTxi+9hw9tGdnxjQJEIG1M0ep/v4Vf6Byry0Tov0U3UHX+Ne+OnHgh5
	 4LS6KOjJAnMHJb3tcbSstq9YPCgwhkEnuvDa5l5hCgdHRo2Y1MbtHvzvhWu2L/qbhs
	 EealB6XiIfvZuAuEasHLZM40NzKelPZL+8scuYGQBzRH/MogjUzd1CPVCwEi7rPPHJ
	 m+BC2KGxhvOzb/nJ9/CafKngC4jkqOAkwmnn7GKzKt2T1YST8OIxTzIR2Wbk/9/9xO
	 OlzglS4yi7PKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 615F0C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122868739.14716.10362262883229994989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08040433c47ef356625047802e3a14cb3ba5993a2a6dcda4c7698e4c12deccd
Date: Fri, 16 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671228687
