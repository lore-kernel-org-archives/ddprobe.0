Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B913036C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7003EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663379453;
	bh=iUsGyIXRsxHzzAwwFvLuV+5bhWPB9Zqx7WF4lhG99rI=;
	h=To:Subject:From:Date:From;
	b=BPugJFzA346HRvpJnkpv4c0CUFyz8bKAuMahSZG4H3ecFjeMYfpZIYvkbLpHgDV3I
	 lhhu1MxVVUX4K+B4XJ2yiyNAcr/u1LfqU5t5oEZhseILHGs9D7GRvCkgb1EbbOjMum
	 qmZ4GDqx7kJnvAe+xshqIGWcNi9GnDa04b4z9btMUzQXyeEvILGhQ/WNbQOmcerNk5
	 Yf9WIOl5Y3S1jhDjG8QogDCZsUAwzjuZm0R0a6fh7hMLCipFcKF89VRHiBkCCjgv+Q
	 7D5MT5UfhXUow+jNRPsy2A5Tkwun2uKVa61LcepFjNLvj5ogFfsWLkhLQylWqytVJC
	 gNS7qkwozle5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57731ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166337945335.28829.9210357044303394689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de9d8e5772d3f06f8f78318d35adee9f6fc2d8cd72ad7ee10e43b246b757dc2
Date: Sat, 17 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663379453
