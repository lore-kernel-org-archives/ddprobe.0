Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD7F7E
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 22:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA14C433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692052388;
	bh=OXo/8j4SMzEcYCL/9uzRA0y5UIPpL25pY8wB4GuqLAI=;
	h=To:Subject:From:Date:From;
	b=C7BvVnt7vUbkEtHcuHGOzOM03EhlZ7KbvHz6PTwNwKyTFo7LLtZmS+6p8iICe98L6
	 Q1AaaaPzs24bOFj/5noHSvyDP3Mpg5Yus3GK6teUTaI6xkvlA7KBX1UTsm/TBKGGkg
	 DdfvuPCiI53DeSJQdhMxzQ8TZcpWkxCT7Gzr4qV653px/JnVYM7gCEJWSy2uSCV9iB
	 eTJwd6MRI/hhm9dIa9vGkm6ecsveeZCx09tOQCw7H/dLKP920iSaoD1Y6kN+edyAmb
	 O+zwM7YnYsKuTpdV5EESEeYnAG4LhVvgp5StYvNvwAiPUmMLEujVM8loMXeKbwG+2W
	 7zvIfgJjFIrsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7E0C001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 22:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169205238874.19681.2568336150814110354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338d3c4f8d3a42feefa5e3a121de2bfd39cb6b9a3d51f4f348f205b92e96bfee
Date: Mon, 14 Aug 2023 22:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692052388
