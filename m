Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2151C13
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 11:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B7BC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688816828;
	bh=ICma3onHD/pIIBvXoAKsT8GarTU7b491ziScmBT6qUg=;
	h=To:Subject:From:Date:From;
	b=SJWa0hotjBwwFIFijGIp/FgB1bzX9itYqDjqtwkoIySav7d61UzlmGGudvF5kpGBt
	 dRN8EZ2SXpXEPU4Tz5qX8pV+j0EaltGIVx2IjXpdvmDsXkgJIYxTSx+tp9yAYOJ4Dq
	 SDgw3JB5dXomh8Vw51eOUHDU13YcscWntV2RyvMotkPMW7QuWkwbc7QtVeUk6oj/Q+
	 Jtem7gfZxUQCnrEVLsOYfSdlaIZgPIR4Ow//4q3h9icNz/CR+LDnUDi709+LeY6RbY
	 Kwb+RmrDINfw+DFpu80T8ebes3JbGLdsPsUbEZ/hpWWsyDtWjiTsBKIVi46UxmMeX7
	 WzHyH7kBd/6Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33DBEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168881682870.4170.16334361187586727778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77382361e9928316ed4133ccfaed65e856c7123a4fb5201862bf537beaac236
Date: Sat, 08 Jul 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688816828
