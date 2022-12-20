Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C451C04
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD36C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671530487;
	bh=wnsTuFtuRsYjCvUXkl69+UoVYrHGwGkpda5PE16p4mY=;
	h=To:Subject:From:Date:From;
	b=HvzQbwGmxuLDeB0aBqJDblgYJfl2Ep/nY6NxNUCUUZJES71aeOURdnXeIj1+DlZdU
	 ePwj/cAc8a/F93PFWeSXsGnqBLhFusR9+mDsC1uTtOWRds6xM57WrJxZKNBYa/sCqe
	 ecRpokRbOr61nSl+junCuy/XAD4sTVR5SnG3DMxZ4teGfKTBPrbOyW0MrYGNQw6FnB
	 n63cpGUt3ktYBLOqM2Ugp6GK8UEQrucG/jEV8aPlzZlqEVpSYcSMh1g1Qy4YfAfRIO
	 DB6ZNY4AhpJ19SAxZVLsZtPmGx3n6K80hG3zYniuUPc5KFQEU+ZkHZn2rAw/bOhPHd
	 Xx90QZQ6SbU5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61798C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153048739.18166.3560310342680053647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2dba2b6114bef4d42e07a1e847a242d4cd2a43814ce4007326201a19964682
Date: Tue, 20 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671530487
