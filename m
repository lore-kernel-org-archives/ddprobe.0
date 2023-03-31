Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2BA1851
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 04:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF06CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 04:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680235266;
	bh=oAC1wpHEEKdMztkYzp4xDoWT2e4Xz7By39Sl4Uy97pw=;
	h=To:Subject:From:Date:From;
	b=HMDJ6CJM7IJauF8Zs31ZPCie2Gpa5UWfzb8YiFIhtVwUYX0euMdT1EPwQ4NV+krgv
	 N077//9h9WgEhQZPg6z6AV33YJ5RA0gRXUKyLF9Sc9lILNAqhKDwQMBU06pE7GAiPw
	 BHkdjLyjJfiquMP/A98U+LGPU9BPgWhhhq/loljNz0RogBXh8RHHRT0Lre3oFusj3N
	 OZUhA2dGDXeo8DfsI1m5kNeIJDLRft2FVOEh5L4gS/MqUz714dm8DF1pKkJxfT2Bp8
	 jnUSPX8AjbfcjCUv4fYFKYNx+ahFGx0lgsVUug/MuBZC00KFFbTpDaU3FnXW0IvR+D
	 zaDwygj2+pnFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC265C6FD18
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 04:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168023526582.11442.13990346867462065586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe39fdd716ac93def507fa9ff0e771ae8fd4698d847403c1562a16a25ce0a8b8
Date: Fri, 31 Mar 2023 04:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680235265
