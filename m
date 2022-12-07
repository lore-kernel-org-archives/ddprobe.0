Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9FE626
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89FF1C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670392254;
	bh=oS4RWqDjweRbTvnDhnGvBPPFpR0gB//fuIDiPhycVTo=;
	h=To:Subject:From:Date:From;
	b=kyFl4Ey4+EuG3ruXkoi6ih2S1Nlp5gFTRHgNnHivt+thciXTpIZCLgsv2pXPUu1Au
	 p+x8XtmKCfujfU6loXAFYC7e3PDf7kb2oKgR8HD9eUYzdReP0ytBCriFa2BKKdyvU5
	 qSrAYAA/26W60o3XaGCSHw0MBqJLvEDDPNtyklbLFqkDAg1Y6pHN7ks/kwT15NiXJ4
	 9xEVeEdyheyfuQa4nk77Bc4m2ULJIRpxAMM4N84M+QN1QZ/ot9nh8ZDjyjBXyskciW
	 B9w6HGvEnD/0vCBM8sX3Oihw48hN98b8iCUYHgm02ZTZPo/NJzW4BKol1kSVzUwaqK
	 zpv5x7UeR+UFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9F6C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039225444.12259.11036586746953156314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8808d1857d7a5cdb4076497af93779c756e18fb49cdf8a4a033dec2c7cb497cf
Date: Wed, 07 Dec 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670392254
