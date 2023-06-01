Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A522539B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 07:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38E5C433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 07:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685603705;
	bh=aBj1IdwSMdkBmZeNwDSlt+XRPojBnsblDjXYDeVGpEY=;
	h=To:Subject:From:Date:From;
	b=jUBtWGyVzAsmIKLDaLo/TZzZQMPYT3ws059uhcSN7xDZJz9f/1BF+y6NmCyJ10wsy
	 xARGSVb16W0KenYgwDeoeXp+FKTuR65CvMLkGvODsQGv9TvvwX0EGe/PnjBrwblmfi
	 Xgcuj6bZIafOK5aYAzvFlYLsMyn/49J6YiGQEi4lcqNgT2QM73ui1qhCfTmW5XB54G
	 TaPc3MHWm6pq2ZK5noHpsdgHsizKopMhI6zjw/QtJ0WHrVI5U8cKFQt63NwHJBSaqk
	 ctt4gsjm3flmQ5QanZi2DR/Emcu4WH3T7lj0Rl60zie0yL4n7W1seNC1vEHxEvA8iO
	 EfO0LDCGp3jpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC99C77B7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 07:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168560370575.12614.9081394601200880043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73dbf5490962d7d25cbad8b4f4f7f6e1c56f9d97ecce86688882c31354cc9b19
Date: Thu, 01 Jun 2023 07:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685603705
