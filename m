Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E93E4439B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POuIujZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86ECEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704904096;
	bh=dDMcetHTHzUjuXxzL6INxbfrPqy/Sizfgk/cwJUgbwQ=;
	h=To:Subject:From:Date:From;
	b=POuIujZhLyrxQF52MMMHTbJNnzbEiESYqjnmeZtxYsUVX4RIYdwpS4VeknyEvrxRK
	 XcsE+1FVWLyOtI1qKX+7pGCQuAYFyMa3TVNgR/RUfWe8DPIBzI4SVfgnjvcq17wnCP
	 uQYd1MbahGLDknCy4PhaTRaxV8hzuv9J2xczclsGpYExF03NR/SBdhdpCnz4PEWDUm
	 SJkLOl8ORS3DP6X//4YdH2otfT/O4W+UVGC1i/sWlqUqwexIZ4njUnIpg3oTRmItv0
	 ZD16vacRns68/UZw3MrYMaT3tgtS6v/7uuBkEm9kD0RvR3W4pASaMZEw6XWhZgw2xM
	 HroDOol2yVjtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684C6C4707C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170490409641.16911.7893251234630630158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bf9e92ea4d33c78b22c6d28b180af5eb75b7b19167a77025d2d8f34f418fb9
Date: Wed, 10 Jan 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704904096
