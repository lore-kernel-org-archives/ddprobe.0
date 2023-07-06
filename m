Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4F21548B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 21:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B7BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688678828;
	bh=2OjQJNso4Okit14wSYtQ88vp3fe6+f0nPaTcyHPNCWc=;
	h=To:Subject:From:Date:From;
	b=n1LCIklEKHLg77jDD/jFkk6uqhriv++L3i2ynrsr03+cMohQzk8kJN6RsooryjHDN
	 sut5NdQ2tL2oSXDzHYteNLljLgmz/Z/vmJSv3AxiW78G14ZfgNtm2iy1DnP1kI2f+I
	 pZIhJfSORGhvsBHF9pL3z/cbfTeBQmhqJdwAAL/yyBtgDuFpxJaSodW/GZ+0/ICtVp
	 wHCZ+ZXG5VXEqnQfyVD2o9nGCb4gDbOv6ugGDy2NwW55C1loHzIQbARCefEAX8/FFP
	 BxcSmmUj4j6qDtQSJDf3jel3XNN96gCF0SCbLr7xe250YFOgG4kv/y9A0j7rp7Gy35
	 iUTBNFCtUS8jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC424EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 21:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168867882869.14344.4754869515577496530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d728d00c309bee16abb9fd0b3e9eff0fa77d26f02bf311feeaf4cc65c53a558c
Date: Thu, 06 Jul 2023 21:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688678828
