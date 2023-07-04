Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61D22575
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 13:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18D0C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 13:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688478968;
	bh=o5Ykh6vJWH7I5WyWogNZdJeL7JbsRW2orkEotXKL1W0=;
	h=To:Subject:From:Date:From;
	b=tt2JJLr4MRXC77vnVcbF0iLsUpGWX3FsmnSXt5/DRWl4Ozx2Qjj/6vvueaIbEvq3S
	 Aa7PHxV4Lf+t4C8rjbnIAq8hGiQ4vme6kSUI/dtAEHBcrokWWZMCEBfBBMGElSsb3R
	 NXRtRRrninisu7bSmNt3r3dkO1iQ70OHMaE4KO0rtaGP75mGE4HQQ6PyFpWrEEs+zQ
	 GNrYbbmiJ9zAFuuwyqGyIGx8dDuLRsnpgEQB0gc8pe4TiJW8XpJ4eNuJPD8mEHmD10
	 yis2A3AdX+ovpsPQiEUbWAXoeiA2NrYY3MkKBq5fwl5Bp27Y9UFPs84KJum+tVjG+n
	 uPMEu/vsExaIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9E5EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 13:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168847896870.20528.1294027168792378659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fad56840d25210028240ecad532cbdf2013076fdde287087732bcf8e42b6ee
Date: Tue, 04 Jul 2023 13:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688478968
