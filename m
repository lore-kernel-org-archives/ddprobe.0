Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7437ED2F7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 08:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD094C433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 08:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690446128;
	bh=s+0q/r8TFONOf7g/CgufSeX9uccWHyJ1IbdrZ3LSjPU=;
	h=To:Subject:From:Date:From;
	b=jNiXl1QKScvtMHfDC6NkJYZ/DnmoTjm/Wtk4GP59jn1PPEam6QjPUfR5VBhF+j6Qg
	 NUaBjUpokmE3VRo8J1jvASJYFt5Suypj3VwJ5XQklieBgMX2jMBKH0RaAYxqQ7ydm4
	 tN5H51qpxmuIMiLTZr+LLYf6vECdI5cyC5lsD2DQECE0GTdEdXDm7mLrPGn4y1xCsQ
	 xNedOBx0CxpepzuyyOTUCykbRu3yel+adSJtKSa4ZNnAvtQuoBTD+XqwGp5u419fvk
	 WeYYzbOm9GFDaZfuLeabHEJ02c2W9DtBaYCgkWGbOfam/n0kNlkc46JmFhMAYpTdrA
	 S8xxtVZ8MKsmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32F9C0015E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 08:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169044612872.28398.14146994251790293896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b0a4f228a68cdeb79261c8bb7a44c9f08e5d096355ddf0b782f46ca5c6ba67
Date: Thu, 27 Jul 2023 08:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690446128
