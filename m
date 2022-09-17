Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B847546BA
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7073EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663452653;
	bh=qRMsD/EBJR+B7iQiu6+wvCRszKdbyRsdsHFj7VqTzFE=;
	h=To:Subject:From:Date:From;
	b=di5mswV41ajtSdXOycp3a2k7eyuw49QwJhbsZ+BF7sdj7WjOnCEwDrPuoc/78ZZl+
	 Z5SRigDVODwbfvmcVP92ifut1aOmmQqPEGwmi1qRdyUOPOKiA+pWNzDQg64lIwkmZf
	 AfapoMZah7KAuyhFec+LsDrob3Z5jByIYVNEmVZQeD29t3suASK0eYQlPr0QFeQGPV
	 1M3G3ragEIRh6spPyEtxeCFpeM3aJ7dzXUTT0TJx3FHI97FXPuRvzRI3vTrjQV4c/H
	 Uvia2vOtf6qA+ZMXB52bEuGN7LnRDqzr/nl44YDW4Bs8kJSygruFq7XAyLm9CdL9of
	 DCcOJ48V7WJAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587C4ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166345265334.16898.6506959947058374682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810f4a8d10b08b8393cd8969931c777c94b9f805ed015e2bdfb5f9b4b65ee72b
Date: Sat, 17 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663452653
