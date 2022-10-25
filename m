Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9313A35
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB32C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666732853;
	bh=zBU7WLE01AkfFCyb5T+mGzAvg1rt0t2Wjs36+EdOG4g=;
	h=To:Subject:From:Date:From;
	b=kElqjAd/4LQZQFM5GXJCNbqUFEHlbnxQ7Lnm4joJyTtQMQ+CuroeI5W50nPHgz6om
	 TtyJT8gDJMlBZ2oW6+5TGr2rsyAb9RfGue+m9pGlY7PSGIUv8SA8/fYr+N4ZzN/GAl
	 uYyHF60bTwwQ/GCy3SulT4N6xuF7q9fSl0jXhlcYVT2a1lsRgYiRisAhH50LHZaDQ/
	 kuqVRj2umzwF9to5LTKzBeo+LGdO/+ydOoFxcTMU0C0KOtmZKrCt9XidKOMAMec1qD
	 KacdX/oGKE2rvUVhycvFdfRcswnpAe2KRdxR3fFGAgMsIdR/E5bDp7vGne+dzIJl11
	 ZSj//P8tddvMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA64C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673285331.5497.11558961414010324027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec4448bde3fa433f78c665ebbbdb495f3af9740e57c6a9b0b0a863107b20d5d
Date: Tue, 25 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666732853
