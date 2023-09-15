Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48754DDDD
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 09:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB801C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 09:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694771108;
	bh=vGxKWbosFJRIIkN2naodJr7gIa8aRGdTexVpVj5FW7s=;
	h=To:Subject:From:Date:From;
	b=TbJCYDdvROTm6pC9Se/0anfqLixZ5mR9xhNnxHwNjYhh/zCLoluHocvDdgJlahxOi
	 gvIC+k+3oeuyh40/NTLq5u2fGirmUe2zXFWLbc6NRRZqp/1ugnZkZnoCa754KgWGV6
	 qCTFYuY9BOnoLmUvNw+KG/hJ9DVUupmDr0wFgGoanVbZRASFCVG/MhTzPCnUckUaE2
	 jH42rkSk6phTJxRPuTqtCr442LJChnWIu60DyiyFiP6TtzLg1jZolyc1BVf1TrcKqy
	 tJb0xHA+vhdAX0JkZDPNp9lxv9CEYKxe3gtn8+ToPZCnvZuvU4ooYGxGrB+kDPWr4m
	 sNQRevcpb6BOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4D2EE644C
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 09:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169477110870.8374.7656461164914865835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ddc7f964e985f66b5159c322fea46657b389994e8205d28baf4f77e8dbcbaad
Date: Fri, 15 Sep 2023 09:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694771108
