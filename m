Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE5C7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80103C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663462253;
	bh=KpYnaZm3U9JhKsvzbBAePrAzwcqls4kqSc0okUq/EKM=;
	h=To:Subject:From:Date:From;
	b=m43J5HlT/2HILtI/t5i1Vg3i8IobG/aRQvB4FE+BTQKLRo6ucQ0+17f11wVcVmbdo
	 fBvQj/WQK11+oPFVeK639I2s9gRO1MDPJXtYi2PQ8rRY5l7DbFub1RiXPRecGAum1q
	 Lk9L1kS/xUz1EtMKT9TVFiWaDdTZZpy15Pv1UnjRdML/kU2Im1S9DiX/a2+V7EJV1P
	 H+zZ16nBBPWGDNCjMTbH13LKfKGWaaxW/xzWCl0PgmfofaxPFLrgNSkCgJ4qQQ+cni
	 zIAf6K8BppRapofgxCNn+fDoKbssZvtL1VGqoVPNwPwfrHbqlekprrrj9XKE4Cdz5q
	 kF93JHECKFkqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569F6ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346225332.20601.9751354767103800673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e4ca8d1f37533e0025fb3adf80b088c5f7619d88d9e9c7ba23c86a0680eab4
Date: Sun, 18 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663462253
