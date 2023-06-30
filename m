Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA9217EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CB3C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688100788;
	bh=BYedzM36A5gDtkhtbu8+zhXoC82L6BEafxNnCtEdsuM=;
	h=To:Subject:From:Date:From;
	b=HvItMQKMa1hFBg6zHS/JNOKtSBezXcFefQ+BTht5sBS49lfCB1T1WGiuyMpLnfjeV
	 //OPWPBk0UCrJFp1nYO9LQk+GweO2AM6gl+O1EXy4nmiJwcapmsPEsgsw/yCfVp5cA
	 KC6QjiiSFm04oMTO3f1jMpsAdq/+4HEYxU8TNgoUW1+UkAbejPcg9JXOt+j8MHNzvb
	 nODU+JDrc3IMrN2BlUfQ96dEYbT9dJHOteGiAS3EsZhrhAZIK0llhQiiOUf3yh04BB
	 NiQFhTVkM3oFbdGCNV5UC0TBtyCv42yJHNmWA9+2awRwS+JOFc9Wc9Mfa35x0hlHvU
	 BBxcaeGMu1+sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CE4EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168810078872.17474.18057644295867994351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1121b1f343653bbe5a3888b73574cb6c57a5a8d8746d08a14467e86cf588f73
Date: Fri, 30 Jun 2023 04:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688100788
