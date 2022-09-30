Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B8B5C8C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6C1C433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664581853;
	bh=pMATc4FsWV1MlH7UUBPv1O4BcjXrQBRE/AyMPQcnIc8=;
	h=To:Subject:From:Date:From;
	b=NWdGP31jAeUMzuCTM/zwTA/IRJPue8OPA99GyTih90D8gJlgLRCVIMdFtJqd0qP/X
	 CatJZGJ9cK32bWwfeflmItdaVfsVevgWfeLPMSwqIRonkyuLkB19xgYd8BlDX84gLF
	 yThDo89HEtrz8QzyjLdTMoFGGLnlgls1jsUnG6E459AYp1kHCxp3Z/+cmRW4yvx7GB
	 LmLAzS5HpiKTc5kY/PeVeBrv4ETToQ+x+lBL3ekQav6HfeufRR0PkSnvBQYs3+AeHE
	 nu5V2cqcH3MCXGOZyfAGW5fT0w6n7t0jOyJmPLHGMNiQhhO57w6jdcWG30tV7MAcrq
	 sAv8RLtEF893w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F7EC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166458185333.1024.7831551224503995025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3329bd21baa4224cc2b88c568b7a5a0a9a02190f259fc4e7ba93e62fb2a651c3
Date: Fri, 30 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664581853
